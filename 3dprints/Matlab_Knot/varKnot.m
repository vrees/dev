clear all
close all
clc

% Adjustable Parameters
filename='knot24.stl';% output file name
nr1=2;% number of times thread goes around torus
nr2=5;% number of times thread goes through hole
r1=17;% torus large radius
r2=6;% torus small radius
r3=5;% thread radius
vs=2;% vertical stretch multiple
thick=3;% thickness of bottom cutoff
% End Adjustable Parameters

cd=gcd(nr2,nr1);% greatest common denominator
nr1a=nr1/cd;% remove extra periods
nr2a=nr2/cd;

phi=linspace(0,2*pi,4*r3);% sections around thread circumference
psi=linspace(0,2*pi*nr1a,5*r1*nr1a);% sections along thread length

r=r1+r2*cos(nr2a/nr1a*psi);% cylinderical coordinate radius
x=r.*cos(psi);% x of centerline
y=r.*sin(psi);% y of centerline
z=vs*r2*sin(nr2a/nr1a*psi);% z of centerline

append=0;
for k=1:cd
    psi1=(k-1)*2*pi/cd*nr1/nr2;% rotation between separate loops
    R1=[cos(psi1) -sin(psi1) 0
        sin(psi1) cos(psi1) 0
        0 0 1];% rotation matrix
    for i=1:length(psi)-1
        if i==1
            t=[x(i+1)-x(end-1);y(i+1)-y(end-1);z(i+1)-z(end-1)];% tangent
        else
            t=[x(i+1)-x(i-1);y(i+1)-y(i-1);z(i+1)-z(i-1)];
        end
        t=t/norm(t);% unit tangent
        n=[-t(2,:);t(1,:);0];% normal
        n=n/norm(n);% unit normal
        b=cross(t,n);% unit binormal
        R=[t n b];% rotation matrix
        for j=1:length(phi)-1
            xyz=R1*([x(i);y(i);z(i)]+r3*R*[0;cos(phi(j));sin(phi(j))]);
            X(i,j)=xyz(1);
            Y(i,j)=xyz(2);
            Z(i,j)=max(xyz(3),thick-vs*r2-r3);
        end
    end
    X=[X X(:,1);X(1,:) X(1,1)];
    Y=[Y Y(:,1);Y(1,:) Y(1,1)];
    Z=[Z Z(:,1);Z(1,:) Z(1,1)];
    
    surf(X,Y,Z), hold on
    xlabel('X')
    ylabel('Y')
    axis equal
    
    surf2stl(filename,X,Y,Z,append,'ascii')% from Matlab File Exchange
    append=1;
    clear X Y Z
end
fprintf('Wrote a [%d,%d] knot as %s\n',nr1,nr2,filename)