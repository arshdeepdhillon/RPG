/// @description Auto Save
//saved file will be in C:\Users\your_user_name\AppData\Local\RPG


//overwrite old save
if(file_exists(SAVEFILE))
{
	file_delete(SAVEFILE);
}

//create new save file
var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file,room);

file_text_close(file);

