//
//  ViewController.m
//  StopWatch
//
//  Created by student14 on 26/12/16.
//  Copyright © 2016 Felix-ITs-Divesh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    tick=0;
    tick1=0;
    tick2=0;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startBtn:(id)sender {
    _timer=[NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(stopWatchtimer) userInfo:nil repeats:YES];
    
}

-(void)stopWatchtimer
{
    tick++;
    
    NSString *str=[[NSString alloc]initWithFormat:@"%d",tick];
    
    _lbl1.text=str;
    
    if(tick==60)
    {
        tick1++;
        NSString *str=[[NSString alloc]initWithFormat:@"%d",tick1];
        _lbl2.text=str;
        tick=0;
    }
    
    if(tick1==60)
    {
        tick2++;
        NSString *str=[[NSString alloc]initWithFormat:@"%d",tick2];
        _lbl3.text=str;
        tick1=0;
        
    }
    
}

- (IBAction)stopBtn:(id)sender {
    
    
    [_timer invalidate];
    
}
- (IBAction)Resetbtn:(id)sender {
    
    
    tick=0;
    tick2=0;
    tick1=0;
    NSString *str2=@"00";
    _lbl1.text=str2;
    _lbl2.text=str2;
    _lbl3.text=str2;
    
    
    
}
@end
