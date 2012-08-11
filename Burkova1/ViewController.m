//
//  ViewController.m
//  Burkova1
//
//  Created by flutesa on 09.08.12.
//  Copyright (c) 2012 flutesa. All rights reserved.
//

#import "ViewController.h"
#import "NSString+CData.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *lblData;

@end


@implementation ViewController
@synthesize lblData;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setLblData:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)buttonClicked:(UIButton *)sender {  //обрабатываем события нажатия на клавишу
    NSString *_cdata = [@"%@" myData];          //принцип присвоения результата работы метода не ясен :)
    [lblData setText: _cdata];                  //устанавливаем в метку получившуюся строку
} //как в ViewComtroller.xib сделать метку авторасширяемой по контенту?
    
@end
