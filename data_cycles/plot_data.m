% % load and plot signals normal/abnormal for the ankle only
% train=load('final_for_test.mat');
% train=train.final_for_test;
% persons=fieldnames(train);
% 
% 
% num_persons=numel(persons);
% feature_for_test = [];
% feature_for_testLFD=[];
% feature_for_testLKI=[];
% feature_for_testRFD=[];
% feature_for_testRKI=[];
%      figure(3); hold on 
%         figure(1); hold on
%         figure(2); hold on
%         figure(4); hold on
%         figure(5); hold on
% 
% for ii=1:num_persons
% %for each person
%     person=train.(persons{ii});
%     disfucntions=size(person,2);
%    
%     for k=1:disfucntions
%     disf=person{k};
%         for j=1:size(disf,2)
%              data=disf{j};
%              % reshape data into a normal dimisions
%              [N T]=size(data);
%             %reshape the data to shape 25xT, where T - number of frames
%              joints_data=reshape(data', 75, N/25);
%              [ign t]=size(joints_data);
%              left_feet_joints= joints_data([14*3+1:14*3+3, 12*3+1:12*3+3, 13*3+1:13*3+3, 15*3+1:15*3+3],:);
%                  % ankle, hip, knee,  foot 
%              right_feet_joints = joints_data([19*3+1:19*3+3, 17*3+1:17*3+3,  16*3+1:16*3+3,  18*3+1:18*3+3],:);
%                 %PlotData(data);
%         %    XYZ=reshape(right_feet_joints, 3, 4*t)';
%             % 
%          %   PlotData_with_selected(data, XYZ);
% 
%               switch k
%                   case 1 %'LFD'
%                        feature_for_testLFD=[feature_for_testLFD; data];
%                         figure(1)
%                         subplot(2,2,1)       % add first plot in 2 x 2 grid
%                         plot(left_feet_joints(1:3,:)');           % line plot
%                        title('Left Ankle')
% 
%                         subplot(2,2,2)       % add second plot in 2 x 2 grid
%                         plot(left_feet_joints(4:6,:)');  % 
%                         title('Left Hip')
% 
%                         subplot(2,2,3)       % add third plot in 2 x 2 grid
%                         plot(left_feet_joints(7:9,:)');  % 
%                         title('Left Knee')
% 
%                         subplot(2,2,4)       % add fourth plot in 2 x 2 grid
%                         plot(left_feet_joints(10:12,:)');  % 
%                         title('Left Foot') 
%                          suptitle('LFD')
%                   case 2% 'LKI'
%                         feature_for_testLKI=[ feature_for_testLKI; data];
%                         figure(2)
%                         subplot(2,2,1)       % add first plot in 2 x 2 grid
%                         plot(left_feet_joints(1:3,:)');           % line plot
%                         title('Left Ankle')
% 
%                         subplot(2,2,2)       % add second plot in 2 x 2 grid
%                         plot(left_feet_joints(4:6,:)');  % 
%                         title('Left Hip')
% 
%                         subplot(2,2,3)       % add third plot in 2 x 2 grid
%                         plot(left_feet_joints(7:9,:)');  % 
%                         title('Left Knee')
% 
%                         subplot(2,2,4)       % add fourth plot in 2 x 2 grid
%                         plot(left_feet_joints(10:12,:)');  % 
%                         title('Left Foot')
%                          suptitle('LKI')
%                   case 3 %'normal'
%                       feature_for_test=[feature_for_test; data];
%                       figure(3)
%                         subplot(2,2,1)       % add first plot in 2 x 2 grid
%                         plot(left_feet_joints(1:3,:)');           % line plot
%                         title('Left Ankle')
% 
%                         subplot(2,2,2)       % add second plot in 2 x 2 grid
%                         plot(left_feet_joints(4:6,:)');  % 
%                         title('Left Hip')
% 
%                         subplot(2,2,3)       % add third plot in 2 x 2 grid
%                         plot(left_feet_joints(7:9,:)');  % 
%                         title('Left Knee')
%                         subplot(2,2,4)       % add fourth plot in 2 x 2 grid
%                         plot(left_feet_joints(10:12,:)');  % 
%                         title('Left Foot')
%                          suptitle('normal')
%                   case 4 %'RFD'
%                       feature_for_testRFD=[feature_for_testRFD; data];
%                       figure(4)
%                               subplot(2,2,1)       % add first plot in 2 x 2 grid
%                         plot(right_feet_joints(1:3,:)');           % line plot
%                         title('Right Ankle')
% 
%                         subplot(2,2,2)       % add second plot in 2 x 2 grid
%                         plot(right_feet_joints(4:6,:)');  % 
%                         title('Right Hip')
% 
%                         subplot(2,2,3)       % add third plot in 2 x 2 grid
%                         plot(right_feet_joints(7:9,:)');  % 
%                         title('Right Knee')
% 
%                         subplot(2,2,4)       % add fourth plot in 2 x 2 grid
%                        plot(right_feet_joints(10:12,:)');  % 
%                         suptitle('RFD')
%                   case 5% 'RKI'
%                     feature_for_testRKI=[feature_for_testRKI; data];  
%                     figure(5);
%                             subplot(2,2,1)       % add first plot in 2 x 2 grid
%                     if ii~=3
%                         plot(right_feet_joints(1:3,:)');           % line plot
%                          title('Right Ankle')
%                           subplot(2,2,2)       % add second plot in 2 x 2 grid
%                         plot(right_feet_joints(4:6,:)');  % 
%                         title('Right Hip')
% 
%                         subplot(2,2,3)       % add third plot in 2 x 2 grid
%                         plot(right_feet_joints(7:9,:)');  % 
%                         title('Right Knee')
% 
%                         subplot(2,2,4)       % add fourth plot in 2 x 2 grid
%                         plot(right_feet_joints(10:12,:)');  % 
%                         title('Right Foot')
%                         suptitle('RKI')
%                     else 
%                        plot(left_feet_joints(1:3,:)');
%                         title('Right Ankle')
%                         plot(left_feet_joints(4:6,:)');  % 
%                         title('Right Hip')
% 
%                         subplot(2,2,3)       % add third plot in 2 x 2 grid
%                         plot(left_feet_joints(7:9,:)');  % 
%                         title('Right Knee')
% 
%                         subplot(2,2,4)       % add fourth plot in 2 x 2 grid
%                         plot(left_feet_joints(10:12,:)');  % 
%                         title('Right Foot')
%                         suptitle('RKI')
%                     end
%                        
%                 
%               
%               end
%          end
%     end
% end
% 

%%
% align the data using the dtw
coeff_res=50;
train=load('final_for_testing_no_right.mat');
train=train.final_for_test;
persons=fieldnames(train);
% 
% data_main=train.alex{1,3}{1,1};
% [N T]=size(data_main);
%             %reshape the data to shape 25xT, where T - number of frames
%              joints_data=reshape(data_main', 75, N/25);
%              [ign t]=size(joints_data);
%              left_feet_joints= joints_data([14*3+1:14*3+3, 12*3+1:12*3+3, 13*3+1:13*3+3, 15*3+1:15*3+3],:);
% x_main=(left_feet_joints(3,:));


num_persons=numel(persons);
feature_for_test = [];
feature_for_testLFD=[];
feature_for_testLKI=[];
feature_for_testRFD=[];

feature_for_testRKI=[];
        figure(3); hold on 
        figure(1); hold on
        figure(2); hold on
        figure(4); hold on
        figure(5); hold on
        figure(6); hold on 
        figure(7); hold on
        figure(8); hold on
        figure(9); hold on
        figure(10); hold on
    train_for_model_normal=[]; % data to save
    train_for_model_RKI=[];
    train_for_model_LKI=[];
    train_for_model_LFD=[];
    train_for_model_RFD=[];        
        
for ii=1:num_persons
%for each person
    person=train.(persons{ii});
    disfucntions=size(person,2);

    for k=1:disfucntions
    disf=person{k};
        for j=1:size(disf,2)
             data=disf{j};
             % reshape data into a normal dimisions
             [N T]=size(data);
            %reshape the data to shape 25xT, where T - number of frames
             joints_data=reshape(data', 75, N/25);
             [ign t]=size(joints_data);
             selected_joints=joints_data([14*3+1:14*3+3, 12*3+1:12*3+3, 13*3+1:13*3+3, 15*3+1:15*3+3, 3*3+1:3*3+3, 19*3+1:19*3+3, 17*3+1:17*3+3,  16*3+1:16*3+3,  18*3+1:18*3+3],:); %take only left ankle, right ankle, left foot, right foot, l hip, r hip, l knee, r knee, mid spine          
             coeff_data=size(selected_joints,2);
             selected_joints = (resample( selected_joints',coeff_res,coeff_data))';
             
             
             
             [ign t]=size(joints_data);
             left_feet_XYZ= joints_data([14*3+1:14*3+3],:);
           
            coeff_data=size(left_feet_XYZ,2);
             left_feet_XYZ = resample( left_feet_XYZ',coeff_res,coeff_data);
             
             right_feet_XYZ=joints_data([19*3+1:19*3+3],:);
             coeff_data=size(right_feet_XYZ,2);
             right_feet_XYZ = resample(right_feet_XYZ',coeff_res,coeff_data);
                 % ankle, hip, knee,  foot 
               %PlotData(data);
        %    XYZ=reshape(right_feet_joints, 3, 4*t)';
            % 
         %   PlotData_with_selected(data, XYZ);

              switch k
                  case 1 %'LFD'
                      
                       figure(1)
                      %  [Dist,D,k,w] = dtw(x_main,left_feet_XYZ);
                     %   left_feet_Z=left_feet_Z(flipud(w(:,2)));
                        M=plot(left_feet_XYZ);           % line plot
                        set(M, {'color'}, {[1 0 0];[0 1 0];[0 0 1]});
                        suptitle('LFD Left')
                        figure(6)
                        M=plot(right_feet_XYZ);
                        train_for_model_LFD=[train_for_model_LFD, selected_joints];
                        set(M, {'color'}, {[1 0 0];[0 1 0];[0 0 1]});
                        suptitle('LFD Right')

                  case 2% 'LKI'
                        figure(2)
                      %  [Dist,D,k,w] = dtw(x_main,left_feet_Z);
                      %  left_feet_Z=left_feet_Z(flipud(w(:,2)));
                        M=plot(left_feet_XYZ);           % line plot
                        set(M, {'color'}, {[1 0 0];[0 1 0];[0 0 1]});
                        suptitle('LKI Left')
                         figure(7)
                         M=plot(right_feet_XYZ);
                         set(M, {'color'}, {[1 0 0];[0 1 0];[0 0 1]});
                        suptitle('LKI Right')
                        train_for_model_LKI=[train_for_model_LKI, selected_joints];

                  case 5 %'normal'
                        figure(3)
                      %  [Dist,D,k,w] = dtw(x_main,left_feet_Z);
                      %  left_feet_Z=left_feet_Z(flipud(w(:,2)));
                        M=plot(left_feet_XYZ);           % line plot
                        set(M, {'color'}, {[1 0 0];[0 1 0];[0 0 1]});
                        suptitle('Left normal')
                        figure(8)
                         M=plot(right_feet_XYZ);
                         set(M, {'color'}, {[1 0 0];[0 1 0];[0 0 1]});
                         suptitle('Right normal')
                         
%                          var_cont = input('no section were detected, decide if you want to keep it, and if yes, for which foot: 1-left, 2=right, 5=skip :');
%                          if var_cont~=0   
                         train_for_model_normal=[train_for_model_normal, selected_joints];
                         
                  case 4 %'RFD'
                     
                      figure(4)
                         
                        M=plot(right_feet_XYZ);           % line plot
                        set(M, {'color'}, {[1 0 0];[0 1 0];[0 0 1]});
                        suptitle('RFD Right')
                        figure(9)
                        M=plot(left_feet_XYZ);           % line plot
                        set(M, {'color'}, {[1 0 0];[0 1 0];[0 0 1]});
                        suptitle('RFD  Left')
                        train_for_model_RFD=[train_for_model_RFD, selected_joints];
              
                  case 3% 'RKI'
                   
                    figure(5);
                    M=plot(right_feet_XYZ);           % line plot
                    set(M, {'color'}, {[1 0 0];[0 1 0];[0 0 1]});
                
                    suptitle('RKI Right')
                    figure(10)
                    M=plot(left_feet_XYZ);           % line plot
                    set(M, {'color'}, {[1 0 0];[0 1 0];[0 0 1]});
                    suptitle('RKI  Left')  
                    train_for_model_RKI=[train_for_model_RKI, selected_joints];

 
              end
         end
    end
end

