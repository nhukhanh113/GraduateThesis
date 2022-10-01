function FinalState=pressure_control(State)

global IN_VECTOR

global OUT_VECTOR

global Difference

global Diameter

global T_start

global out

global t

if T_start ==0.0

   State=struct('i',1,'LS',0)

   end

FinalState.i=State.i+1  

DELTA = 5.2E-5

FinalState.LS = State.LS + DELTA*(IN_VECTOR(2)-IN_VECTOR(1))

FinalState.LS = max(0,min(1,FinalState.LS))

OUT_VECTOR=interp1(Difference,Diameter,FinalState.LS)

out(State.i)= OUT_VECTOR*1.E3

t(State.i)= T_start

if mod(State.i,50)==0

   plot(t(1:State.i),out(1:State.i))

   title('Throttle Diameter, mm')

   xlabel('Time, s')

   end


