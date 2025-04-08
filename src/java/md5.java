
import java.security.MessageDigest;

public class md5 {

    
    private static String md5encrypt(){
    
    
    String xxx = "fgghh";

    String output = "";

    
try{
        String algorithm;
    
    MessageDigest md = MessageDigest.getInstance(algorithm, "MD5");
                        byte[] digest = md.digest(xxx.getBytes());
        StringBuilder sb = new StringBuilder();

        for (byte b : digest) {

            sb.append(String.format("%02x", b));

        }

        output = sb.toString();
        
        
    }
    catch(Exception e){
     throw new RuntimeException(e);
    }

    

return output;

}
