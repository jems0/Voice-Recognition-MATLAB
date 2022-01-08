%CodeCatcher Program

load('P3data.mat')

%Forever while loop
while(1)
    
    %Cue
    display('Listening for "Code Catcher"');
    %Record cue
    recordblocking(voice,2);
    CueAud = getaudiodata(voice);
    %Create different cue and Code audio
    [CueAud,CueAud2,CueSect] = MakeData(CueAud);
    [CodeAud,CodeAud2,CodeSect] = MakeData(CodeAud);
    %Get the difference of the CodeSect and the cueSect
    [CodeCompare] = AudioCompare(CodeSect,CueSect);
    %Is cue the code word?
    %If yes run Code Catcher
    if(CodeCompare<1500)
        
        %Code Catcher
       [word] = CodeCatcher('P3data.mat');
        
    %Cue end
    end
    pause(2);
%While end    
end