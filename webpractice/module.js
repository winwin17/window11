const fs=require('fs');
const path=require('path');

fs.readdir(__dirname,(err,files)=>{
	if(err)
	{
		console.log('error');
	}
	else
	{
		files.forEach(file=>{
			if(path.extname(file)==".html")
			{
				console.log(file);
			}
			
		})
		
	}
	
	
});