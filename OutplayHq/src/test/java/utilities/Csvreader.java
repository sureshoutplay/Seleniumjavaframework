package utilities;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Csvreader {

	public static void main(String ar[]) throws IOException
	{   
		
		String value=getDataByRowNumAndColumnNum("C:\\Users\\AppVirality\\Desktop\\samplecontacts.csv",2,3);
		System.out.println(value);
	}
	
 public static String	getDataByRowNumAndColumnNum(String path, int rowNum,int columnNum) throws IOException
	{
	 
	 String row="";
		BufferedReader csvReader = new BufferedReader(new FileReader(path));
		int i=1;
		while ((row = csvReader.readLine()) != null) {
			if(i==rowNum)
			{
			String data[]=row.split(",");
			  for(int j=0;j<data.length;j++)
			  {
				  if(j==columnNum-1)
				  {
				       return data[j];
				  }
			  }
			}
		i++;
		  
		    
		}
		
	 return "";
	}
}
