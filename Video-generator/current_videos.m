function current_videos(file,Rind,Network) %Change back to trial when not in batch mode%
%matlabpool open

%Filename Manipulation and File Output Generation
e='.lvm';
%e='.txt';
Vex='.avi';
%under='_';
%curdir=pwd;
%filebase=curdir(:,(39:46));
%file=[filebase under trial];

d=sum(file(:,(10:end)));
filebase='_10osc';
timename='Time: ';
timebase='s';
filename=[file filebase Vex];
if d<=57
    w=file(10);
    dot=sum('.');
    namenum=[w dot];
else 
    namenum=file(10:11);
end
%namenum='o4';

%Loading and Finding Current Data
name1=[file e];
raw=load(name1);
raw=sgolayfilt(raw,2,31);
FirstE=2;
LastE=3;
Hertz=200;
raw=raw(:,(FirstE:LastE));
[nr, nc]=size(raw);
parfor k=1:nc;
       raw1=raw(:,k);
       raw2=raw1/Rind;
       raw(:,k)=raw2;
end

%List of Accepted Networks
N=sum(num2str(Network));
if N==1540 %2E Positive Micro%
    x=[100,175];
    y=[55,55];
    picture='Picture3.jpg';
    radius=40;
    ty=220;
else
    disp 'Network Entered not Listed in m-file'
    return 
end

%Generate Color Matrix and Assigning a Color to Each Current
maxV=max(max(raw));
minV=min(min(raw));
clmpV=[minV:(maxV-minV)/63:maxV]';
k=zeros(nr,nc);
parfor CL=1:nc;
    k(:,CL)=dsearchn(clmpV,raw(:,CL));
end
close

%Current Circle Properties
c=colormap;
w=radius;
h=radius;

%Place Current Circles onto Image at specified x,y then saves a Frame
vid=VideoWriter(filename);%,'FrameRate',fps);
vid.Quality=85;
%vid.FrameFate=20;
open(vid);
for j=1:35:nr; %%Change Speed Here: 35=Real Time%%
    q1=(k(j,:));
    imshow(picture); hold on;
    for p=1:nc;
        q2=c(q1(:,p),:);
        time=num2str((j/Hertz));
        timestring=[timename time timebase];
        image=rectangle('Position',[x(p),y(p),h,w],'Curvature',[1,1],'FaceColor',[q2]); hold on;
        set(image,'edgecolor',[q2]); text(15,(ty-20),timestring); hold on;
    end
    uiwait
    writeVideo(vid,getframe);
    clf;
end
close(vid)

%winopen(filename);
%matlabpool close
close
disp 'done'
end