package suporte;

public class Unidade {

	String html;
	
	public Unidade(){
		html = "<select name=\"unidade\">";
		html += "<option value=\"Pacote\">Pacotes</option>";
		html += "<option value=\"Quilo\">Quilo</option>";
		html += "<option value=\"Unidade\">Unidade</option>";
		html += "</select->";		
	}
	
	public String getUnidades(){
		return html;
	}
	
}
