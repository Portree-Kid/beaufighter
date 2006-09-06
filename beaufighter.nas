
drop_torp = func {
   setprop(string, "sim/weight[0]/selected", "none");
   setprop("/controls/armament/release-all", 1);
}

fire_rp = func {
  rcount=getprop("/sim/weight[1]/weight-lb");
  if(rcount > 20){
    if(rcount == 260)  {
     setprop("/controls/armament/pair1", 1)
     } else {
      if(rcount == 200)  {
      setprop("/controls/armament/pair2", 1)
      } else {
        if(rcount == 140)  {
        setprop("/controls/armament/pair3", 1)
        } else {
          if(rcount == 80)  {
          setprop("/controls/armament/pair4", 1)
          }
        }
      }
    }
  setprop("sim/weight[1]/weight-lb", rcount - 60.0);
  setprop("sim/weight[2]/weight-lb", rcount - 60.0);
  }
}



toggle_fdoor = func {
  if(getprop("/controls/gear/fdoor-pos-norm") > 0) {
    interpolate("/controls/gear/fdoor-pos-norm", 0, 3);
  } else {
    interpolate("/controls/gear/fdoor-pos-norm", 1, 3);
  }
}


toggle_rdoor = func {
  if(getprop("/controls/gear/rdoor-pos-norm") > 0) {
    interpolate("/controls/gear/rdoor-pos-norm", 0, 3);
  } else {
    interpolate("/controls/gear/rdoor-pos-norm", 1, 3);
  }
}


toggle_cdoor = func {
  if(getprop("/controls/gear/cdoor-pos-norm") > 0) {
    interpolate("/controls/gear/cdoor-pos-norm", 0, 3);
  } else {
    interpolate("/controls/gear/cdoor-pos-norm", 1, 3);
  }
}

