function player(action)
global playername1 playername2 judge yy bb
Z = imread('勝利.jpeg');
imshow(Z)
[y2 Fs2] = audioread('勝利音效.wav');
sound(y2,Fs2);
if judge == bb
    x1=uicontrol('style','text','string',['player1 ' playername1 ' win'],'position',[70 10 200 40],'fontsize',16)
else
    x1=uicontrol('style','text','string',['player2 ' playername2 ' win'],'position',[70 10 200 40],'fontsize',16)
end
x2=uicontrol('style','pushbutton','string','play again','position',[270 15 150 40],'fontsize',16)
x3=uicontrol('string','回到主選單','position',[450 15 200 40],'fontsize',16)
set(x2,'callback',@playagain)
set(x3,'callback',@playagain2)

function playagain(src,event)
global row column
close all
clear sound
if row*column == 25
    button
else
    button42
end

function playagain2(src,event)
        close all
        clear sound
        Try_Fighting
