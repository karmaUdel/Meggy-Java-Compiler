package symtable;

//Might need to import stuff

public class MethodSTE extends STE{

private List<String> mSignature; //Last item is going to be return type


	public MethodSTE() {
	super();
	}

	 public List getList(){
	 return this.mSignature;	
	}

	 public setToList(String type){
  	this.mSignature.push(type);
	}
		

}
