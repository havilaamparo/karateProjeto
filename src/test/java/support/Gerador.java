package support;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Gerador{
    
    public static String gerarData(){

      Date dataHoje = new Date();
      SimpleDateFormat sdf1= new SimpleDateFormat("dd/MM/yyyy");

      return sdf1.format(dataHoje);
    }
    
}