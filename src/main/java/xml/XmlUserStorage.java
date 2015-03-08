/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xml;

import discussionForum.DiscussionUsers;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 *
 * @author Mark
 */
public class XmlUserStorage implements XmlStorage {
    private String file;
    private List<DiscussionUsers> userList;
    
    public XmlUserStorage() {
        //file = "..\\src\\main\\resources\\user.xml";
        file = System.getenv("OPENSHIFT_DATA_DIR") + "/user.xml";
        userList = new ArrayList<DiscussionUsers>();
        read();
    }

    public List<DiscussionUsers> getUserList() {
        return userList;
    }
    
    public void read() {
        try {
            userList = new ArrayList<DiscussionUsers>();
            File fXmlFile = new File(file);
            System.out.println("Loading file \"" + file + "\"...\n");
   
            DocumentBuilderFactory builderFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = builderFactory.newDocumentBuilder();
            Document doc = builder.parse(fXmlFile);
            doc.getDocumentElement().normalize();
         
            NodeList nPostList = doc.getElementsByTagName("user");
           
            for (int i = 0 ; i < nPostList.getLength(); i++) {
                Node nNode = nPostList.item(i);
                Element eElement = (Element) nNode;
                String username = eElement.getElementsByTagName("username").item(0).getTextContent();
                String password = eElement.getElementsByTagName("password").item(0).getTextContent();
                userList.add(new DiscussionUsers(username, password)); 
            }
        } catch (IOException ioex) {
            System.out.println("Error in Opening XML file! shutting down program");
            return;
        } catch (Exception ex) {
            System.out.println("Error in parsing XML file! shutting down program");
            return;
        }
    }
    
    public void addUser(DiscussionUsers user) {
        userList.add(user);
    }
    
    public void write() {
        try {
            DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder docBuilder = docFactory.newDocumentBuilder();

            Document doc = docBuilder.newDocument();
            Element rootElement = doc.createElement("forum");
            doc.appendChild(rootElement);

            for (int i = 0; i < userList.size(); i++) {
                DiscussionUsers userInsert = userList.get(i);

                Element user = doc.createElement("user");
                rootElement.appendChild(user);

                Element username = doc.createElement("username");
                username.appendChild(doc.createTextNode(userInsert.getUsername()));
                user.appendChild(username);

                Element password = doc.createElement("password");
                password.appendChild(doc.createTextNode(userInsert.getPassword()));
                user.appendChild(password);
            }

            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Transformer transformer = transformerFactory.newTransformer();
            DOMSource source = new DOMSource(doc);
            StreamResult result = new StreamResult(new File(file));

            transformer.transform(source, result);
        } catch (Exception exception) {
           
        }
    }  
}
