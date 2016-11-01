package symtable;

//Might need to import stuff

public class VarSTE extends STE{

private String mType;
private String mBase;
private String mOffset;


	public MethodSTE() {
	super();
	}

	 public String getType(){
	 return this.mSignature;	
	}

	 public setType(String type){
	this.mType = type;
	}

	 public String getBase(){
	 return this.mBase;	
	}

	 public setBase(String base){
	this.mBase= base;
	}

	 public int getOffset(){
	 return this.mOffset;	
	}

	 public setType(int offset){
	this.mOffset= offset;
	}
		

}
