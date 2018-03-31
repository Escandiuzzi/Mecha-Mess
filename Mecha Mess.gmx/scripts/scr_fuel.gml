///recover jetpack
        
if (fuel < 100)
    {
        fuel += 0.2     
    }
else if (fuel < 0) 
    {
        fuel = 0;  
    }
else if fuel > 100
    {
        fuel = 100
    }    
if fuel > 10
    {
        jp_CD = false;
    }
if fuel = 0
    {
        jp_CD = true;
    }
