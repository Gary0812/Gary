package threeDES;


import java.security.Key;
import java.security.SecureRandom;
 


import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
 

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;
 
public class ThreeDES {
	static String password="aaaaa";
	public static String crypt(String content,int i){
		try {
			KeyGenerator generator = KeyGenerator.getInstance("AES");
			generator.init(128,new SecureRandom(password.getBytes()));
			Key key = generator.generateKey();
			generator = null;
			if(i == 1){
				return getEncString(content,key);
			}
			else if(i == 2){
				return getDesString(content,key);
			}
		} catch (Exception e) {
			return null;
		}
		return null;
	}
 
	/**
	 * 加密String明文输入,String密文输出
	 * 
	 * @param strMing
	 * @return
	 */
	private static String getEncString(String strMing,Key key) {
		byte[] byteMi = null;
		byte[] byteMing = null;
		String strMi = "";
		BASE64Encoder base64en = new BASE64Encoder();
		try {
			byteMing = strMing.getBytes("UTF8");
		
			byteMi = getEncCode(byteMing,key);
		 
			strMi =new String(base64en.encode(byteMi));
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			base64en = null;
			byteMing = null;
			byteMi = null;
		}
		return strMi;
	}
 
	/**
	 * 解密 以String密文输入,String明文输出
	 * 
	 * @param strMi
	 * @return
	 */
	public static String getDesString(String strMi, Key key) {
		BASE64Decoder base64De = new BASE64Decoder();
		byte[] byteMing = null;
		byte[] byteMi = null;
		String strMing = "";
		try {
			byteMi = base64De.decodeBuffer(strMi);
			byteMing = getDesCode(byteMi,key);
			strMing = new String(byteMing, "UTF8");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			base64De = null;
			byteMing = null;
			byteMi = null;
		}
		return strMing;
	}
	
	 /**
     * 将16进制转换为二进制
     *
     * @param hexStr
     * @return
     */
    public static byte[] parseHexStr2Byte(String hexStr) {
        if (hexStr.length() < 1) {
            return null;
        }
        byte[] result = new byte[hexStr.length() / 2];
        for (int i = 0; i < hexStr.length() / 2; i++) {
            int high = Integer.parseInt(hexStr.substring(i * 2, i * 2 + 1), 16);
            int low = Integer.parseInt(hexStr.substring(i * 2 + 1, i * 2 + 2), 16);
            result[i] = (byte) (high * 16 + low);
        }
     
		return result;
    }
    
    /**     * 将二进制转换成16进制     *     * @param buf     * @return     */  
    public static String parseByte2HexStr(byte buf[]) {  
    	
    	
    	
    	
    	StringBuilder sb = new StringBuilder();    
    	for (int i = 0; i < buf.length; i++) {        
    		String hex = Integer.toHexString(buf[i] & 0xFF);         
    		if (hex.length() == 1) {                hex = '0' + hex;            }        
    		sb.append(hex.toUpperCase());        }     
    	return sb.toString();    }

 
	
 
	/**
	 * 加密以byte[]明文输入,byte[]密文输出
	 * 
	 * @param byteS
	 * @return
	 */
	private static byte[] getEncCode(byte[] byteS,Key key) {
		byte[] byteFina = null;
		Cipher cipher;
		try {
			cipher = Cipher.getInstance("AES");
			cipher.init(Cipher.ENCRYPT_MODE, key);
			byteFina = cipher.doFinal(byteS);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cipher = null;
		}
		return byteFina;
	}
 
	/**
	 * 解密以byte[]密文输入,以byte[]明文输出
	 * 
	 * @param byteD
	 * @return
	 */
	private static byte[] getDesCode(byte[] byteD,Key key) {
		Cipher cipher;
		byte[] byteFina = null;
		try {
			cipher = Cipher.getInstance("AES");
			cipher.init(Cipher.DECRYPT_MODE, key);
			byteFina = cipher.doFinal(byteD);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cipher = null;
		}
		return byteFina;
	}
 
	public static void main(String[] args) {
		System.out.println(ThreeDES.crypt("bindMobile=13023130171&fenjihao=107", 1));
		System.out.println(ThreeDES.crypt("GT+F0fcFNGiq73/+FaX9pK9n9zqxwqz9sZ7MQdSp1BxWJXWn7EwnvniQpAOaGi0W", 2));
	}
	

}

 


