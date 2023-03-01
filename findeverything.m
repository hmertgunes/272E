function [mymax, mymin, myaverg, mystdv, myclosest] = findeverything(myvec)


% algorithm of the finding max value
    myleft = myvec(1);
    myright = myvec(2);
    
    for i=1:size(myvec,2)
        if(myright > myleft)
            myleft = myright;
        end
        myright = myvec(i);
    end

    mymax = myleft;


% algorithm of the finding min value
    myleft1 = myvec(1);
    myright1 = myvec(2);
    
    for i=1:size(myvec,2)
        if(myright1 < myleft1)
            myleft1 = myright1;
        end
        myright1 = myvec(i);
    end

    mymin = myleft1;
 

% algorithm of the finding average value 
    sum = 0;
    count = 0;

    for i=1:size(myvec,2)
        sum = sum + myvec(i);
        count = count +  1;
    end

    myaverg = sum / count;

    
% algorithm of the finding standart deviation 
    mu = 0;
    myres = 0;

    for i=1:size(myvec,2)
        mu = mu + myvec(i);
    end
    mu = mu * 1/size(myvec,2);

    for i=1:size(myvec,2)
        myres = myres + (myvec(i) - mu)^2;
    end
    myres = sqrt(myres * 1/size(myvec,2)); 
    mystdv = myres;


% algorithm of the element that has the closest value to the average
   
    myrec = 1;
    myclosest = 0;

    for i=1:size(myvec,2)
        if(abs(myvec(i) - myaverg) < myrec)
            myrec = abs(myvec(i) - myaverg);
            myclosest = myvec(i);
        end
    end
   

end