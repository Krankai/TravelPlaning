/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import com.dropbox.core.*;
import com.dropbox.core.v2.DbxClientV2;

/**
 *
 * @author CREAT10N
 */
public class ImageControl {

    private static final String ACCESS_TOKEN = "cKh3tEi-r1AAAAAAAAAKCWzcDYB7Sm2XAJaYkzxhdvq-viW81Uk22j7hgL3-6rFU";
    private static final DbxRequestConfig REQUEST_CONFIG = new DbxRequestConfig("tp-transfer-file");
    private static final DbxClientV2 DBX_CLIENT = new DbxClientV2(REQUEST_CONFIG, ACCESS_TOKEN);
    private static String image_url = null;

    public static String importUserAvatar(int userID) {
        try {
            String path = "/User_Avatar/" + Integer.toString(userID) + ".png";
            image_url = DBX_CLIENT.files().getTemporaryLink(path).getLink();
        } catch (DbxException e) {

        }
        return image_url;
    }
    
    public static String importLocationImage(int locationID) {
        try {
            String path = "/Location" + Integer.toString(locationID) + ".png";
            image_url = DBX_CLIENT.files().getTemporaryLink(path).getLink();
        } catch (DbxException e) {

        }
        return image_url;
    }
}
