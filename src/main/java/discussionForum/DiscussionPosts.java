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
public class DiscussionPosts {
    private String username;
    private String text;
    private String date;

    public DiscussionPosts() {
        username = "N/A";
        text = "N/A";
        date = "N/A";
    }
    
    public DiscussionPosts(String username, String text, String date) {
        this.username = username;
        this.text = text;
        this.date = date;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }  
}
