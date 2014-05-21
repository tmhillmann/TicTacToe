function tictactoe(x,y)
persistent turncount
persistent fh
persistent t
persistent p
persistent players
persistent w
persistent g
persistent gametype
switch x
    case 1
        turncount=1;
        gametype=1;

            fh=figure;
            t=makebuttons;
            makequit;
            makereset;
            p=makeplayers;
            w=makewintext;
            g=makegametype;
            
    case 2
        if turncount >=10
        else
            z=get(t(y),'String');
            if isempty(findstr(z,' '))
            else
                if mod(turncount,2)
                    set(t(y),'String','X')
                    turncount=turncount+1;
                else
                    set(t(y),'String','O')
                    turncount=turncount+1;
                end
            end
            %Checkwin
                s1=[];
                s2=[];
                s3=[];
                s4=[];
                s5=[];
                s6=[];
                s7=[];
                s8=[];
                for i=1:3
                    s1=[s1,get(t(i),'String')];
                    s2=[s2,get(t(i+3),'String')];
                    s3=[s3,get(t(i+6),'String')];
                    s4=[s4,get(t(3*i-2),'String')];
                    s5=[s5,get(t(3*i-1),'String')];
                    s6=[s6,get(t(3*i),'String')];
                end
                s7=[get(t(1),'String')];
                s7=[s7,get(t(5),'String')];
                s7=[s7,get(t(9),'String')];
                s8=[get(t(3),'String')];
                s8=[s8,get(t(5),'String')];
                s8=[s8,get(t(7),'String')];
                sz={};
                sz{1,1}=s1;
                sz{2,1}=s2;
                sz{3,1}=s3;
                sz{4,1}=s4;
                sz{5,1}=s5;
                sz{6,1}=s6;
                sz{7,1}=s7;
                sz{8,1}=s8;
                n=8;
                if gametype==2
                    s9=[];
                    s9=[get(t(1),'String')];
                    s9=[s9,get(t(6),'String')];
                    s9=[s9,get(t(8),'String')];
                    s10=[];
                    s10=[get(t(3),'String')];
                    s10=[s10,get(t(4),'String')];
                    s10=[s10,get(t(8),'String')];
                    s11=[];
                    s11=[get(t(7),'String')];
                    s11=[s11,get(t(6),'String')];
                    s11=[s11,get(t(2),'String')];
                    s12=[];
                    s12=[get(t(9),'String')];
                    s12=[s12,get(t(4),'String')];
                    s12=[s12,get(t(2),'String')];
                    sz{9,1}=s9;
                    sz{10,1}=s10;
                    sz{11,1}=s11;
                    sz{12,1}=s12;
                    n=12;
                elseif gametype==3
                    s9=[];
                    s9=[get(t(1),'String')];
                    s9=[s9,get(t(6),'String')];
                    s9=[s9,get(t(8),'String')];
                    s10=[];
                    s10=[get(t(3),'String')];
                    s10=[s10,get(t(4),'String')];
                    s10=[s10,get(t(8),'String')];
                    s11=[];
                    s11=[get(t(7),'String')];
                    s11=[s11,get(t(6),'String')];
                    s11=[s11,get(t(2),'String')];
                    s12=[];
                    s12=[get(t(9),'String')];
                    s12=[s12,get(t(4),'String')];
                    s12=[s12,get(t(2),'String')];
                    sz{9,1}=s9;
                    sz{10,1}=s10;
                    sz{11,1}=s11;
                    sz{12,1}=s11;
                    s13=[];
                    s13=[get(t(1),'String')];
                    s13=[s13,get(t(4),'String')];
                    s13=[s13,get(t(9),'String')];
                    s14=[];
                    s14=[get(t(3),'String')];
                    s14=[s14,get(t(6),'String')];
                    s14=[s14,get(t(7),'String')];
                    s15=[];
                    s15=[get(t(7),'String')];
                    s15=[s15,get(t(4),'String')];
                    s15=[s15,get(t(3),'String')];
                    s16=[];
                    s16=[get(t(9),'String')];
                    s16=[s16,get(t(6),'String')];
                    s16=[s16,get(t(1),'String')];
                    s17=[];
                    s17=[get(t(3),'String')];
                    s17=[s17,get(t(5),'String')];
                    s17=[s17,get(t(9),'String')];
                    s18=[];
                    s18=[get(t(1),'String')];
                    s18=[s18,get(t(5),'String')];
                    s18=[s18,get(t(7),'String')];
                    sz{13,1}=s13;
                    sz{14,1}=s14;
                    sz{15,1}=s15;
                    sz{16,1}=s16;                    
                    sz{17,1}=s17;
                    sz{18,1}=s18;
                    n=18;
                end
                for i=1:n
                    if ~isempty(findstr(sz{i,1},'XXX'))
                        set(w, 'String', 'X Wins');
                        turncount=15;
                    elseif ~isempty(findstr(sz{i,1},'OOO'))
                        set(w, 'String', 'O Wins');
                        turncount=15;
                    end
                end
                if turncount>=10
                    w1=get(w(1),'String');
                    if ~isempty(findstr(w1,'X Wins'))
                        if ~isempty(findstr(w1,'O Wins'))
                            set(w, 'String', 'Cats Game');
                        end
                    end
                end
        end
        % BotLogic
        if players == 1
            if turncount <= 8
                while mod(turncount+1,2)
                    m=randi(9);
                    z=get(t(m),'String');
                    if isempty(findstr(z,' '))
                    else
                        set(t(m),'String','O');
                        turncount=turncount+1;
                    end
                end
                %Checkwin
                s1=[];
                s2=[];
                s3=[];
                s4=[];
                s5=[];
                s6=[];
                s7=[];
                s8=[];
                for i=1:3
                    s1=[s1,get(t(i),'String')];
                    s2=[s2,get(t(i+3),'String')];
                    s3=[s3,get(t(i+6),'String')];
                    s4=[s4,get(t(3*i-2),'String')];
                    s5=[s5,get(t(3*i-1),'String')];
                    s6=[s6,get(t(3*i),'String')];
                end
                s7=[get(t(1),'String')];
                s7=[s7,get(t(5),'String')];
                s7=[s7,get(t(9),'String')];
                s8=[get(t(3),'String')];
                s8=[s8,get(t(5),'String')];
                s8=[s8,get(t(7),'String')];
                sz={};
                sz{1,1}=s1;
                sz{2,1}=s2;
                sz{3,1}=s3;
                sz{4,1}=s4;
                sz{5,1}=s5;
                sz{6,1}=s6;
                sz{7,1}=s7;
                sz{8,1}=s8;
                n=8;
                if gametype==2
                    s9=[];
                    s9=[get(t(1),'String')];
                    s9=[s9,get(t(6),'String')];
                    s9=[s9,get(t(8),'String')];
                    s10=[];
                    s10=[get(t(3),'String')];
                    s10=[s10,get(t(4),'String')];
                    s10=[s10,get(t(8),'String')];
                    s11=[];
                    s11=[get(t(7),'String')];
                    s11=[s11,get(t(6),'String')];
                    s11=[s11,get(t(2),'String')];
                    s12=[];
                    s12=[get(t(9),'String')];
                    s12=[s12,get(t(4),'String')];
                    s12=[s12,get(t(2),'String')];
                    sz{9,1}=s9;
                    sz{10,1}=s10;
                    sz{11,1}=s11;
                    sz{12,1}=s12;
                    n=12;
                elseif gametype==3
                    s9=[];
                    s9=[get(t(1),'String')];
                    s9=[s9,get(t(6),'String')];
                    s9=[s9,get(t(8),'String')];
                    s10=[];
                    s10=[get(t(3),'String')];
                    s10=[s10,get(t(4),'String')];
                    s10=[s10,get(t(8),'String')];
                    s11=[];
                    s11=[get(t(7),'String')];
                    s11=[s11,get(t(6),'String')];
                    s11=[s11,get(t(2),'String')];
                    s12=[];
                    s12=[get(t(9),'String')];
                    s12=[s12,get(t(4),'String')];
                    s12=[s12,get(t(2),'String')];
                    sz{9,1}=s9;
                    sz{10,1}=s10;
                    sz{11,1}=s11;
                    sz{12,1}=s11;
                    s13=[];
                    s13=[get(t(1),'String')];
                    s13=[s13,get(t(4),'String')];
                    s13=[s13,get(t(9),'String')];
                    s14=[];
                    s14=[get(t(3),'String')];
                    s14=[s14,get(t(6),'String')];
                    s14=[s14,get(t(7),'String')];
                    s15=[];
                    s15=[get(t(7),'String')];
                    s15=[s15,get(t(4),'String')];
                    s15=[s15,get(t(3),'String')];
                    s16=[];
                    s16=[get(t(9),'String')];
                    s16=[s16,get(t(6),'String')];
                    s16=[s16,get(t(1),'String')];
                    s17=[];
                    s17=[get(t(3),'String')];
                    s17=[s17,get(t(5),'String')];
                    s17=[s17,get(t(9),'String')];
                    s18=[];
                    s18=[get(t(1),'String')];
                    s18=[s18,get(t(5),'String')];
                    s18=[s18,get(t(7),'String')];
                    sz{13,1}=s13;
                    sz{14,1}=s14;
                    sz{15,1}=s15;
                    sz{16,1}=s16;                    
                    sz{17,1}=s17;
                    sz{18,1}=s18;
                    n=18;
                end
                for i=1:n
                    if ~isempty(findstr(sz{i,1},'XXX'))
                        set(w, 'String', 'X Wins');
                        turncount=15;
                    elseif ~isempty(findstr(sz{i,1},'OOO'))
                        set(w, 'String', 'O Wins');
                        turncount=15;
                    end
                end
            end
        end       

    case 3
        set(t,'String',' ')
        set(w,'String',' ')
        turncount=1;
        
    case 4
        z=str2num(get(p(1),'String'));
        if z==1
            players=1;
        elseif z==2
            players=2;
        else
            players=2;
            set(p(1),'String',num2str(2));
        end
        tictactoe(3,0);
        
    case 5
         gametype=get(g(1),'Value');
         tictactoe(3,0);        
        
    otherwise
    
end
end
%Ancillary Functions
function t=makebuttons
t(1)=uicontrol(...
    'Style','pushbutton',...
    'String',' ',...
    'FontSize',24,...
    'Position',[125 75 90 90],...
    'Callback', ['tictactoe(2,1)']);
t(2)=uicontrol(...
    'Style','pushbutton',...
    'String',' ',...
    'FontSize',24,...
    'Position',[225 75 90 90],...
    'Callback', ['tictactoe(2,2)']);
t(3)=uicontrol(...
    'Style','pushbutton',...
    'String',' ',...
    'FontSize',24,...
    'Position',[325 75 90 90],...
    'Callback', ['tictactoe(2,3)']);
t(4)=uicontrol(...
    'Style','pushbutton',...
    'String',' ',...
    'FontSize',24,...
    'Position',[125 175 90 90],...
    'Callback', ['tictactoe(2,4)']);
t(5)=uicontrol(...
    'Style','pushbutton',...
    'String',' ',...
    'FontSize',24,...
    'Position',[225 175 90 90],...
    'Callback', ['tictactoe(2,5)']);
t(6)=uicontrol(...
    'Style','pushbutton',...
    'String',' ',...
    'FontSize',24,...
    'Position',[325 175 90 90],...
    'Callback', ['tictactoe(2,6)']);
t(7)=uicontrol(...
    'Style','pushbutton',...
    'String',' ',...
    'FontSize',24,...
    'Position',[125 275 90 90],...
    'Callback', ['tictactoe(2,7)']);
t(8)=uicontrol(...
    'Style','pushbutton',...
    'String',' ',...
    'FontSize',24,...
    'Position',[225 275 90 90],...
    'Callback', ['tictactoe(2,8)']);
t(9)=uicontrol(...
    'Style','pushbutton',...
    'String',' ',...
    'FontSize',24,...
    'Position',[325 275 90 90],...
    'Callback', ['tictactoe(2,9)']);
end
function makequit
uicontrol(...
    'Style','pushbutton',...
    'String','Quit',...
    'Position',[500 390 50 20],...
    'Callback', 'close all');
end
function makereset
uicontrol(...
    'Style','pushbutton',...
    'String','New Game',...
    'Position',[10 390 70 20],...
    'Callback', ['tictactoe(3,0)']);
end
function p=makeplayers
p(1)=uicontrol(...
            'Style', 'edit',...
            'String',num2str(2),...
            'Position', [200 390 50 20],...
            'Callback', ['tictactoe(4,0)']);
uicontrol(...
            'Style', 'text',...
            'String', 'Players:',...
            'Position', [145 392.5 50 15]);
end
function w=makewintext
w(1)=uicontrol(...
            'Style', 'edit',...
            'String', ' ',...
            'Position', [230 45 80 20]);
end
function g=makegametype
g(1)=uicontrol(...
            'Style','popup',...
            'String','Planar|Torus|Klein Bottle',...
            'Position', [300 390 90 20],...
            'Callback', ['tictactoe(5,0)']);
end
