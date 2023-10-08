
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:file_picker/file_picker.dart';

class FilePickerView extends StatefulWidget {
  const FilePickerView({Key? key}) : super(key: key);

  @override
  State<FilePickerView> createState() => _FilePickerViewState();
}

class _FilePickerViewState extends State<FilePickerView> {
  FilePickerResult?result;
  String?_fileName;
  PlatformFile?pickedFile;
  bool isLoading=false;
  File?fileToDisplay;

  void pickFile()async{
    try{
      setState(() {
        isLoading=true;
      });
      result = await FilePicker.platform.pickFiles(allowMultiple: true,
      type: FileType.any,
      );
      if(result!=null){
        _fileName=result !.files.first.name;
        pickedFile=result!.files.first;
        fileToDisplay=File(pickedFile!.path.toString());
      }
      setState(() {
        isLoading=false;
      });
    }
      catch (e){
       print(e);
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FilePickerView'),
        centerTitle: true,
      ),
      body:  Column(
        children: [
          Center(
            child: isLoading?CircularProgressIndicator():TextButton(onPressed: (){
              pickFile();
            }, child: Text("picked file"))
          ),
          if(pickedFile!=null)
            SizedBox(
              height: 300,
              width: 400,
              child: Image.file(fileToDisplay as File),
            )
        ],
      ),

    );
  }
}
