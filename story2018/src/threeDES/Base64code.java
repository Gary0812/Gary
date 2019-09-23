package threeDES;

import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.Base64.Decoder;
import java.util.Base64.Encoder;

public class Base64code {
	

	final Decoder decoder =  Base64.getDecoder();
	final Encoder encoder = Base64.getEncoder();
	final String text = "字串文字";
	final byte[] textByte = text.getBytes();
	//編碼
	final String encodedText = encoder.encodeToString(textByte);
	//System.out.println(encodedText);
	//解碼
	//System.out.println(new String(decoder.decode(encodedText), "UTF-8"));
	String orig = "hello world!";	
	String desc = Base64.getEncoder().encodeToString(orig.getBytes(StandardCharsets.UTF_8));	
	
	String unDecodeStr=new String(Base64.getDecoder().decode(desc),StandardCharsets.UTF_8);	



}
