## A simple method for loop closure detection in 3D LIDAR data:

```
@inproceedings{rohling2015fast,
  title={A fast histogram-based similarity measure for detecting loop closures in 3-D LIDAR data},
  author={R{\"o}hling, Timo and Mack, Jennifer and Schulz, Dirk},
  booktitle={Intelligent Robots and Systems (IROS), 2015 IEEE/RSJ International Conference on},
  pages={736--741},
  year={2015},
  organization={IEEE}
}
```

## Images

Our own data in Yuquan Campus, from Velodyen VLP16.

![](https://github.com/ZJUYH/laserScan_Similarity/raw/master/image/Campus.png)

two loop closures on 2017.03.07 in Zhejiang University:

![](https://github.com/ZJUYH/laserScan_Similarity/raw/master/image/round0&2.jpg)

Bins of single scan:

![](https://github.com/ZJUYH/laserScan_Similarity/raw/master/image/0.png)

Similarity Matrix:

![](https://github.com/ZJUYH/laserScan_Similarity/raw/master/image/1.png)

Test on kitti_odom_benchmark 05:

![](https://github.com/ZJUYH/laserScan_Similarity/raw/master/image/kitti_05.png)

PR-Curve of EMD & Cos:

![](https://github.com/ZJUYH/laserScan_Similarity/raw/master/image/PRCurve05.jpg)

ROC-Curve of EMD & Cos:

![](https://github.com/ZJUYH/laserScan_Similarity/raw/master/image/ROCCurve05.jpg)

Using Siamese Network to get the similarity between two images(Range Only):

![](https://github.com/ZJUYH/laserScan_Similarity/raw/master/image/test_0627_comp.jpg)

## Thanks:

Ethz_asl for libpointmatcher

## IS GOING ON

start to use deep learning on Place Recognition
