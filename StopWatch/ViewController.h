//
//  ViewController.h
//  StopWatch
//
//  Created by student14 on 26/12/16.
//  Copyright © 2016 Felix-ITs-Divesh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


{
    int tick,tick1,tick2;
}

- (IBAction)startBtn:(id)sender;

- (IBAction)stopBtn:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *lbl1;

@property (weak, nonatomic) IBOutlet UILabel *lbl2;

@property (weak, nonatomic) IBOutlet UILabel *lbl3;

@property(nonatomic,retain)NSTimer *timer;

- (IBAction)Resetbtn:(id)sender;


@end

