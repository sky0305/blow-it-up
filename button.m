function varargout = button(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @button_OpeningFcn, ...
    'gui_OutputFcn',  @button_OutputFcn, ...
    'gui_LayoutFcn',  [] , ...
    'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end
if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

function button_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
global color judge column row X Y clrhelp sec15 t yy bb playername1 playername2
yy = [0.95 0.9 0.6];
bb = [0.6 0.9 0.95];
set(handles.text2,'String',['player1：' playername1],'ForegroundColor',[0.88 0.88 0.38])
set(handles.text3,'String',['player2：' playername2],'ForegroundColor',[0.07 0.62 1])
color = 0;
judge = [0,0,0];
column = 5;
row = 5;
clrhelp = 1;
[y Fs] = audioread('音效.mp3');
y=repmat(y,2,1);
sound(y,Fs);
X = imread('箭頭.jpg');
% axes(handles.axes1)
set(handles.axes1,'position',[98.9,26,16,4]);
imshow(X)
sec15 = 1;
t = timer('TimerFcn',{@t_TimerFcn,hObject},'Period',1,'ExecutionMode','fixedRate', 'TasksToExecute',16);
guidata(hObject, handles);

function varargout = button_OutputFcn(hObject, eventdata, handles)
varargout{1} = handles.output;

function pushbutton1_Callback(hObject, eventdata, handles)
pbnumber = 1;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton2_Callback(hObject, eventdata, handles)
pbnumber = 2;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton3_Callback(hObject, eventdata, handles)
pbnumber = 3;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton4_Callback(hObject, eventdata, handles)
pbnumber = 4;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton5_Callback(hObject, eventdata, handles)
pbnumber = 5;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton6_Callback(hObject, eventdata, handles)
pbnumber = 6;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton7_Callback(hObject, eventdata, handles)
pbnumber = 7;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton8_Callback(hObject, eventdata, handles)
pbnumber = 8;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton9_Callback(hObject, eventdata, handles)
pbnumber = 9;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton10_Callback(hObject, eventdata, handles)
pbnumber = 10;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton11_Callback(hObject, eventdata, handles)
pbnumber = 11;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton12_Callback(hObject, eventdata, handles)
pbnumber = 12;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton13_Callback(hObject, eventdata, handles)
pbnumber = 13;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton14_Callback(hObject, eventdata, handles)
pbnumber = 14;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton15_Callback(hObject, eventdata, handles)
pbnumber = 15;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton16_Callback(hObject, eventdata, handles)
pbnumber = 16;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton17_Callback(hObject, eventdata, handles)
pbnumber = 17;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton18_Callback(hObject, eventdata, handles)
pbnumber = 18;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton19_Callback(hObject, eventdata, handles)
pbnumber = 19;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton20_Callback(hObject, eventdata, handles)
pbnumber = 20;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton21_Callback(hObject, eventdata, handles)
pbnumber = 21;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton22_Callback(hObject, eventdata, handles)
pbnumber = 22;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton23_Callback(hObject, eventdata, handles)
pbnumber = 23;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton24_Callback(hObject, eventdata, handles)
pbnumber = 24;
prepare(hObject, eventdata, pbnumber, handles);

function pushbutton25_Callback(hObject, eventdata, handles)
pbnumber = 25;
prepare(hObject, eventdata, pbnumber, handles);

function next4(hObject, eventdata,pbnumber,handles)
global color judge column row X Y clrhelp clrall1 undon1 t team yy bb sec15 playername1 playername2
a = judge ~= get(eval(['handles.pushbutton',num2str(pbnumber)]),'BackgroundColor');
if a(1) || a(2) || a(3) == 1
    set(handles.pushbutton26,'Enable','on');
    stop(t)
    sec15 = 1;
    start(t)
    for ii = 1:column*row
        eval(['clrall',num2str(clrhelp),'{ii} = get(eval([''handles.pushbutton'',num2str(ii)]),''BackgroundColor'');']);
        eval(['undon',num2str(clrhelp),'{ii} = get(eval([''handles.pushbutton'',num2str(ii)]),''String'');']);
    end
    color = color + 1;
    n = str2num(get(eval(['handles.pushbutton',num2str(pbnumber)]),'String'));
    if n < 3
        if mod(color,2)==0
            set(eval(['handles.pushbutton',num2str(pbnumber)]),'String',num2str(n+1),'BackgroundColor',[0.6 0.9 0.95]);
            set(handles.axes1,'position',[98.9,26,16,4])
        else
            set(eval(['handles.pushbutton',num2str(pbnumber)]),'String',num2str(n+1),'BackgroundColor',[0.95 0.9 0.6]);
            set(handles.axes1,'position',[98.9,22,16,4])
        end
        judge = get(eval(['handles.pushbutton',num2str(pbnumber)]),'BackgroundColor');
    else
        [pbnumber1,judgein,clrin,color1] = beforeboom(pbnumber,hObject, eventdata, handles);
        near = [pbnumber - 1, pbnumber + 1, pbnumber + row, pbnumber - row];
        for ii = 1:4
            [pbnumber] = middleofboom(judgein,color1,hObject, eventdata, handles,pbnumber1,near,clrin,ii);
        end
    end
    clrhelp = 1;
    clrbox(hObject, eventdata, handles);
else
    youbadbad(pbnumber,hObject, eventdata, handles);
end

function next3(hObject, eventdata, pbnumber, handles)
global color judge column row X Y clrhelp clrall1 undon1 t yy bb sec15 playername1 playername2
a = judge ~= get(eval(['handles.pushbutton',num2str(pbnumber)]),'BackgroundColor');
if a(1) || a(2) || a(3) == 1
    set(handles.pushbutton26,'Enable','on');
    stop(t)
    sec15 = 1;
    start(t)
    for ii = 1:column*row
        eval(['clrall',num2str(clrhelp),'{ii} = get(eval([''handles.pushbutton'',num2str(ii)]),''BackgroundColor'');']);
        eval(['undon',num2str(clrhelp),'{ii} = get(eval([''handles.pushbutton'',num2str(ii)]),''String'');']);
    end
    color = color + 1;
    n = str2num(get(eval(['handles.pushbutton',num2str(pbnumber)]),'String'));
    if n < 2
        if mod(color,2)==0
            set(eval(['handles.pushbutton',num2str(pbnumber)]),'String',num2str(n+1),'BackgroundColor',[0.6 0.9 0.95]);
            set(handles.axes1,'position',[98.9,26,16,4])
        else
            set(eval(['handles.pushbutton',num2str(pbnumber)]),'String',num2str(n+1),'BackgroundColor',[0.95 0.9 0.6]);
            set(handles.axes1,'position',[98.9,22,16,4])
        end
        judge = get(eval(['handles.pushbutton',num2str(pbnumber)]),'BackgroundColor');
    else
        [pbnumber1,judgein,clrin,color1] = beforeboom(pbnumber,hObject, eventdata, handles);
        if pbnumber < row
            near = [pbnumber - 1, pbnumber + 1, pbnumber + row];
        elseif pbnumber > row*(column-1)
            near = [pbnumber - 1, pbnumber + 1, pbnumber - row];
        elseif mod(pbnumber,row)==1
            near = [pbnumber - row, pbnumber + 1, pbnumber + row];
        else
            near = [pbnumber - row, pbnumber - 1, pbnumber + row];
        end
        for ii = 1:3
            [pbnumber] = middleofboom(judgein,color1,hObject, eventdata, handles,pbnumber1,near,clrin,ii);
        end
    end
    clrhelp = 1;
    clrbox(hObject, eventdata, handles);
else
    youbadbad(pbnumber,hObject, eventdata, handles);
end

function next2(hObject, eventdata,pbnumber,handles)
global color judge column row X Y clrhelp clrall1 undon1 t yy bb sec15 playername1 playername2
a = judge ~= get(eval(['handles.pushbutton',num2str(pbnumber)]),'BackgroundColor');
if a(1) || a(2) || a(3) == 1
    set(handles.pushbutton26,'Enable','on');
    stop(t)
    sec15 = 1;
    start(t)
    for ii = 1:column*row
        eval(['clrall',num2str(clrhelp),'{ii} = get(eval([''handles.pushbutton'',num2str(ii)]),''BackgroundColor'');']);
        eval(['undon',num2str(clrhelp),'{ii} = get(eval([''handles.pushbutton'',num2str(ii)]),''String'');']);
    end
    color = color + 1;
    n = str2num(get(eval(['handles.pushbutton',num2str(pbnumber)]),'String'));
    if n < 1
        if mod(color,2)==0
            set(eval(['handles.pushbutton',num2str(pbnumber)]),'String',num2str(n+1),'BackgroundColor',bb);
            set(handles.axes1,'position',[98.9,26,16,4])
        else
            set(eval(['handles.pushbutton',num2str(pbnumber)]),'String',num2str(n+1),'BackgroundColor',yy);
            set(handles.axes1,'position',[98.9,22,16,4])
        end
        judge = get(eval(['handles.pushbutton',num2str(pbnumber)]),'BackgroundColor');
    else
        [pbnumber1,judgein,clrin,color1] = beforeboom(pbnumber,hObject, eventdata, handles);
        if pbnumber == 1
            near = [pbnumber + 1, pbnumber + row];
        elseif pbnumber == row*column
            near = [pbnumber - 1, pbnumber - row];
        elseif pbnumber == row
            near = [pbnumber - 1, pbnumber + row];
        else
            near = [pbnumber + 1, pbnumber - row];
        end
        for ii = 1:2
            [pbnumber] = middleofboom(judgein,color1,hObject, eventdata, handles,pbnumber1,near,clrin,ii);
        end
    end
    clrhelp = 1;
    clrbox(hObject, eventdata, handles);
else
    youbadbad(pbnumber,hObject, eventdata, handles);
end

function prepare(hObject, eventdata, pbnumber, handles)
global column row
if  pbnumber == 1 | pbnumber == row | pbnumber == column*row | pbnumber == row*(column-1)+1 %pbnumber == 1 || row || column*row || (row*(column-1)+1)
    next2(hObject, eventdata, pbnumber, handles);
elseif pbnumber < row | (mod(pbnumber,row) == 0) | (mod(pbnumber,row) == 1) | pbnumber > row*(column-1)
    next3(hObject, eventdata, pbnumber, handles);
else
    next4(hObject, eventdata, pbnumber, handles);
end

function final = Endgame(handles, judgein, column, row)
final = 0;
for jj = 1: column*row
    if get(eval(['handles.pushbutton',num2str(jj)]),'BackgroundColor') == judgein
        break
    else
        final = final + 1;
    end
end

function checkbox1_Callback(hObject, eventdata, handles)
v=get(handles.checkbox1,'value')
if v==1
    clear sound
else
    [y Fs] = audioread('音效.mp3');
    y=repmat(y,2,1);
    sound(y,Fs);
end

function figure1_DeleteFcn(hObject, eventdata, handles)
global t
clear sound
stop(t)

function pushbutton26_Callback(hObject, eventdata, handles)
global clrall1 column row undon1 color judge clrhelp X Y t sec15
for ii = 1:column*row
    set(eval(['handles.pushbutton',num2str(ii)]),'BackgroundColor',clrall1{ii});
    set(eval(['handles.pushbutton',num2str(ii)]),'String',undon1{ii});
end
color = color - 1;
if judge == [0.6 0.9 0.95]
    judge = [0.95 0.9 0.6];
    set(handles.axes1,'position',[98.9,22,16,4])
else
    judge = [0.6 0.9 0.95];
    set(handles.axes1,'position',[98.9,26,16,4])
end
clrbox(hObject, eventdata, handles);
set(handles.pushbutton26,'Enable','off');
stop(t)
sec15 = 1;
start(t)

function clrbox(hObject, eventdata, handles)
global yy bb column row
yypb = 0;
bbpb = 0;
for ii = 1:column*row
    clrclr{ii} = get(eval(['handles.pushbutton',num2str(ii)]),'BackgroundColor');
    if clrclr{ii} == yy
        yypb = yypb + 1;
        set(handles.text7,'String',['佔領格數：' num2str(yypb)]);
    elseif clrclr{ii} == bb
        bbpb = bbpb + 1;
        set(handles.text8,'String',['佔領格數：' num2str(bbpb)]);
    end
end

function t_TimerFcn(hObject, eventdata, hFigure)
handles = guidata(hFigure);
global sec15 t row column judge
set(handles.text5,'String',num2str(16-sec15),'ForegroundColor',[0 0 0]);
if str2num(get(handles.text5,'String')) < 4
    set(handles.text5,'ForegroundColor',[1 0 0]);    
end
while str2num(get(handles.text5,'String')) == 0
    n = ceil(row*column*rand(1,1));
    b = judge ~= get(eval(['handles.pushbutton',num2str(n)]),'BackgroundColor');
    if b(1) || b(2) || b(3) == 1
%         pause(1);
        stop(t);
        eval(['pushbutton',num2str(n),'_Callback(hObject, eventdata, handles);']);
        break
    end
end
% disp(sec15);
sec15 = sec15 + 1;

function [pbnumber1,judgein,clrin,color1] = beforeboom(pbnumber,hObject, eventdata, handles)
global color judge column row
color1 = color - 1;
clrin = get(eval(['handles.pushbutton',num2str(pbnumber)]),'BackgroundColor');
set(eval(['handles.pushbutton',num2str(pbnumber)]),'String',num2str(0),'BackgroundColor',[0.94,0.94,0.94]);
judgein = judge;
pbnumber1 = pbnumber;

function [pbnumber] = middleofboom(judgein,color1,hObject, eventdata, handles,pbnumber1,near,clrin,ii)
global color judge column row clrhelp
color = color1;
judge = judgein;
clrhelp = clrhelp + 1;
set(eval(['handles.pushbutton',num2str(near(ii))]),'BackgroundColor', clrin);
final = Endgame(handles, judgein, column, row);
if final == column*row
    disp('win');
    close all
    player
    return
end
[y1 Fs1] = audioread('爆炸音效.mp3');
sound(y1,Fs1);
eval(['pushbutton',num2str(near(ii)),'_Callback(hObject, eventdata, handles);']);
pbnumber = pbnumber1;

function youbadbad(pbnumber,hObject, eventdata, handles)
global  judge yy playername1 playername2
eval(['disp(',num2str(pbnumber),');']);
if judge == yy
    set(handles.text11,'String',['現在是' playername2 '的回合喔！'],'Visible','on');
else
    set(handles.text11,'String',['現在是' playername1 '的回合喔！'],'Visible','on');
end
pause(1);
set(handles.text11,'Visible','off');
