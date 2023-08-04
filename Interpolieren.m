function loom_table_replace=Interpolieren(Framenum_First_all_merge,Framenum_Last_all_merge,First_all_merge,Last_All_Merge,x_anfang,y_anfang,loom_table,k)
loom_table_replace=loom_table;
%loom_table_replace(Framenum_First_all_merge:Framenum_Last_all_merge,:)=loom_table(Framenum_First_all_merge:Framenum_Last_all_merge,:);
%loomtable_new=loom_table();
Point_num=abs((Framenum_First_all_merge-Framenum_Last_all_merge))+1;
% Define the two points
Beginx=x_anfang(k,1)
Beginy=y_anfang(k,1)
Shelter_center=[226, 317];
x=[Beginx Shelter_center(1,1)]%x_finalend]
y=[Beginy Shelter_center(1,2)]%y_finalend]
x_new = linspace(Beginx, Shelter_center(1,1), Point_num);
y_new = interp1(x, y, x_new);
loom_table_replace.CenterX_mm_(First_all_merge:Last_All_Merge,:)=x_new
loom_table_replace.CenterY_mm_(First_all_merge:Last_All_Merge,:)=y_new
%y_new = linspace(y(1,1), y(1,2), Point_num)
%plot(x,y,'o',x_new,y_new,'-');%':.')
end
