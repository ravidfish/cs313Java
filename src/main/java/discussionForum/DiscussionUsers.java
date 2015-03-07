/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package discussionForum;

/**
 *
 * @author Mark
 */
public class DiscussionUsers {
    private String username;
    private String password;
    
    public DiscussionUsers() {
        username = "N/A";
        password = "N/A";
    }
    public DiscussionUsers(String username, String text) {
        this.username = username;
        this.password = text;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }  
}
