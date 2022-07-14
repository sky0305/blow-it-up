function rule(action)
if nargin<1,action='first';end
switch action
    case 'first'
        close all;
        %���͵���
        figH=figure('position',[400 80 650 590]);
        %���ͫ��s
        n0=uicontrol('style','push','tag','next0to1','string','�U�@��','FontSize',18,'position',[400 10 100 40]);
        set(n0,'callback','rule(''page1'')');
        %���ͻ���
        t0=uicontrol('style','text','tag','explain','string',...
        ['�W�h�s�G��b�Y����A�A�N���A�j�㨭���~ �u�O�n�O�o�A�A�u���I' sprintf('\n') '(1)�ťծ�l �� (2)�A�ۤv�C�⪺��l��(�p�ϥ�)'],...
        'position',[60 80 540 35],'FontSize',11);
        %���͹Ϥ�
        axes('position',[0.06 0.22 0.88 0.75]);
        rule0.img=imread('rule00.jpg');
        image(rule0.img)
        axis off
     case 'page0'
        n6=findobj(0,'tag','back');
        set(n6,'Visible',0);
        
        u1=findobj(0,'tag','up1to0');
        set(u1,'Visible',0);
        u2=findobj(0,'tag','up2to1');
        set(u2,'Visible',0);
        u3=findobj(0,'tag','up3to2');
        set(u3,'Visible',0);
        u33=findobj(0,'tag','up33to3');
        set(u33,'Visible',0);
        u4=findobj(0,'tag','up4to33');
        set(u4,'Visible',0);
        u5=findobj(0,'tag','up5to4');
        set(u5,'Visible',0);
        u6=findobj(0,'tag','up6to5');
        set(u6,'Visible',0);
        
        n0=uicontrol('style','push','tag','next0to1','string','�U�@��','FontSize',18,'position',[400 10 100 40]);
        set(n0,'callback','rule(''page1'')');
        %���ͻ���
        t0=uicontrol('style','text','tag','explain','string',...
        ['�W�h�s�G��b�Y����A�A�N���A�j�㨭���~ �u�O�n�O�o�A�A�u���I' sprintf('\n') '(1)�ťծ�l �� (2)�A�ۤv�C�⪺��l��(�p�ϥ�)'],...
        'position',[60 80 540 35],'FontSize',11);
        %���͹Ϥ�
        axes('position',[0.06 0.22 0.88 0.75]);
        rule0.img=imread('rule00.jpg');
        image(rule0.img)
        axis off
     case 'page1'
        n6=findobj(0,'tag','back');
        set(n6,'Visible',0);
        
        n1=uicontrol('style','push','tag','next1to2','string','�U�@��','FontSize',18,'position',[400 10 100 40]);
        set(n1,'callback','rule(''page2'')');
        
        u1=uicontrol('style','push','tag','up1to0','string','�W�@��','FontSize',18,'position',[150 10 100 40]);
        set(u1,'callback','rule(''page0'')');
        %���ͻ���
        t1=uicontrol('style','text','tag','explain','string',...
        ['�W�h�@�G����U ''�������s'' �ֿn�� ''''�ĤG�U'''' �ɡA' sprintf('\n') '�|�Ѩ������~�z�}�X���A�л\�ò֥[�ܩP����s(�p�ϥ�)'],...
        'position',[60 80 540 35],'FontSize',11);
        %���͹Ϥ�
        axes('position',[0.06 0.22 0.88 0.75]);
        rule1.img=imread('rule11.jpg');
        image(rule1.img)
        axis off
        
    case 'page2'   
        n6=findobj(0,'tag','back');
        set(n6,'Visible',0);
        
        n2=uicontrol('style','push','tag','next2to3','string','�U�@��','FontSize',18,'position',[400 10 100 40]);
        set(n2,'callback','rule(''page3'')');
        
        u2=uicontrol('style','push','tag','up2to1','string','�W�@��','FontSize',18,'position',[150 10 100 40]);
        set(u2,'callback','rule(''page1'')');
        
        axes('position',[0.06 0.22 0.88 0.75]);
        rule2.img=imread('rule22.jpg');
        image(rule2.img)
        axis off
        
        t2=uicontrol('style','text','tag','explain2','string',...
        ['�W�h�G�G����U ''��u���s'' �ֿn�� ''''�ĤT�U'''' �ɡA' sprintf('\n') '�|�Ѥ������T���z�}�X���A�л\�ò֥[�ܩP����s(�p�ϥ�)'],...
        'position',[60 80 540 35],'FontSize',11);
   
    case 'page3'        
        n6=findobj(0,'tag','back');
        set(n6,'Visible',0);
        
        n3=uicontrol('style','push','tag','next3to33','string','�U�@��','FontSize',18,'position',[400 10 100 40]);
        set(n3,'callback','rule(''page33'')');
        
        u3=uicontrol('style','push','tag','up3to2','string','�W�@��','FontSize',18,'position',[150 10 100 40]);
        set(u3,'callback','rule(''page2'')');
        
        axes('position',[0.06 0.22 0.88 0.75]);
        rule3.img=imread('rule33.jpg');
        image(rule3.img)
        axis off
        t3=uicontrol('style','text','tag','explain3','string',...
        ['�W�h�T�G����U ''�������s'' �ֿn�� ''''�ĥ|�U'''' �ɡA' sprintf('\n') '�|�Ѥ������~�z�}�X���A�л\�ò֥[�ܩP����s(�p�ϥ�)'],...
        'position',[60 80 540 35],'FontSize',11);

    case 'page33'
        n6=findobj(0,'tag','back');
        set(n6,'Visible',0);
        
        n33=uicontrol('style','push','tag','next33to4','string','�U�@��','FontSize',18,'position',[400 10 100 40]);
        set(n33,'callback','rule(''page4'')');
        
        u33=uicontrol('style','push','tag','up33to3','string','�W�@��','FontSize',18,'position',[150 10 100 40]);
        set(u33,'callback','rule(''page3'')');
        
        axes('position',[0.06 0.22 0.88 0.75]);
        rule33.img=imread('rule88.jpg');
        image(rule33.img)
        axis off
        t33=uicontrol('style','text','tag','explain3','string',...
        ['�W�h�|�G��A�o�{�M�Ӫ��@�B�A���A�˷R���٦�o���U�F''�t�@����''...' sprintf('\n') '�n�����O�A�A��undo�i�H�ϥγ�~ �a�����O�A�@���u���@��undo�����|�A�n�n�ⴤ!'],...
        'position',[60 80 540 35],'FontSize',11);
    case 'page4'
        n6=findobj(0,'tag','back');
        set(n6,'Visible',0);
        
        n4=uicontrol('style','push','tag','next4to5','string','�U�@��','FontSize',18,'position',[400 10 100 40]);
        set(n4,'callback','rule(''page5'')');
        
        u4=uicontrol('style','push','tag','up4to33','string','�W�@��','FontSize',18,'position',[150 10 100 40]);
        set(u4,'callback','rule(''page33'')');
        
        axes('position',[0.06 0.22 0.88 0.75]);
        rule4.img=imread('rule44.jpg');
        image(rule4.img)
        axis off
        t4=uicontrol('style','text','tag','explain4','string',...
        '��A�����s�z���ɡA���ȯ���L�H�Y��(���)�A�Ʀr�٥i�H ''''�֥['''' ��~(�p�ϥ�)',...
        'position',[60 80 540 35],'FontSize',11);
    
    case 'page5'
        n6=findobj(0,'tag','back');
        set(n6,'Visible',0);
        
        n5=uicontrol('style','push','tag','next5to6','string','�U�@��','FontSize',18,'position',[400 10 100 40]);
        set(n5,'callback','rule(''page6'')');
        
        u5=uicontrol('style','push','tag','up5to4','string','�W�@��','FontSize',18,'position',[150 10 100 40]);
        set(u5,'callback','rule(''page4'')');
        
        axes('position',[0.06 0.22 0.88 0.75]);
        rule5.img=imread('rule55.jpg');
        image(rule5.img)
        axis off
        t5=uicontrol('style','text','tag','explain5','string',...
        '�����n��ۥ��������A''''���a����''''�~�O���D�I (�p�ϥ�)','position',[60 80 540 35],'FontSize',14);
    case 'page6'
        n6=uicontrol('style','push','tag','back','string','Back To Menu','FontSize',18,'position',[350 10 200 40]);
        set(n6,'callback','rule(''Backtomenu'')');
        
        u6=uicontrol('style','push','tag','up6to5','string','�W�@��','FontSize',18,'position',[150 10 100 40]);
        set(u6,'callback','rule(''page5'')');
        
        axes('position',[0.06 0.22 0.88 0.75]);
        rule6.img=imread('rule66.jpg');
        image(rule6.img)
        axis off
        t6=uicontrol('style','text','tag','explain6','string',...
        '�s�a���ɺõL�� �������|''''�f���''''�I �j�a�[�o~','position',[60 80 540 35],'FontSize',14);
    case 'Backtomenu'
        close all
        clear sound
        Try_Fighting
end
        