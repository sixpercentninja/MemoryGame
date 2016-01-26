//
//  ViewController.m
//  MemoryGame
//
//  Created by Andrew Chen on 1/25/16.
//  Copyright © 2016 Andrew Chen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *one;
@property (weak, nonatomic) IBOutlet UIImageView *two;
@property (weak, nonatomic) IBOutlet UIImageView *three;
@property (weak, nonatomic) IBOutlet UIImageView *four;
@property (weak, nonatomic) IBOutlet UIImageView *five;
@property (weak, nonatomic) IBOutlet UIImageView *six;
@property (weak, nonatomic) IBOutlet UIImageView *seven;
@property (weak, nonatomic) IBOutlet UIImageView *eight;
@property (weak, nonatomic) IBOutlet UIImageView *nine;
@property (weak, nonatomic) IBOutlet UIImageView *ten;
@property (weak, nonatomic) IBOutlet UIImageView *eleven;
@property (weak, nonatomic) IBOutlet UIImageView *twelve;
@property (weak, nonatomic) IBOutlet UIImageView *thirteen;
@property (weak, nonatomic) IBOutlet UIImageView *fourteen;
@property (weak, nonatomic) IBOutlet UIImageView *fifteen;
@property (weak, nonatomic) IBOutlet UIImageView *sixteen;

@property NSArray *imageViewArray;

@property NSArray *cardsArray;

@property NSMutableArray *cardsImageArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//SET RULES SPLASH SCREEN
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    if(![userDefaults boolForKey: @"firstLaunch"]){
        [userDefaults setBool:YES forKey:@"firstLaunch"];
        UIImageView *splash = [[UIImageView alloc]initWithFrame:self.view.frame];
        splash.image = [UIImage imageNamed:@"MemoryGameInstructions"];
        [self.parentViewController.view addSubview:splash];
    }

    self.imageViewArray = [[NSArray alloc]initWithObjects:self.one, self.two, self.three, self.four, self.five, self.six, self.seven, self.eight, self.nine, self.ten, self.eleven, self.twelve, self.thirteen, self.fourteen, self.fifteen, self.sixteen, nil];
    
    self.cardsArray = [[NSArray alloc]initWithObjects:@"10_of_clubs", @"10_of_diamonds", @"10_of_hearts", @"10_of_spades", @"2_of_clubs", @"2_of_diamonds", @"2_of_hearts", @"2_of_spades", @"3_of_clubs", @"3_of_diamonds", @"3_of_hearts", @"3_of_spades", @"4_of_clubs", @"4_of_diamonds", @"4_of_hearts", @"4_of_spades", @"5_of_clubs", @"5_of_diamonds", @"5_of_hearts", @"5_of_spades", @"6_of_clubs", @"6_of_diamonds", @"6_of_hearts", @"6_of_spades", @"7_of_clubs", @"7_of_diamonds", @"7_of_hearts", @"7_of_spades", @"8_of_clubs", @"8_of_diamonds", @"8_of_hearts", @"8_of_spades", @"9_of_clubs", @"9_of_diamonds", @"9_of_hearts", @"9_of_spades", @"ace_of_clubs", @"ace_of_diamonds", @"ace_of_hearts", @"ace_of_spades",  @"jack_of_clubs",  @"jack_of_diamonds", @"jack_of_hearts", @"jack_of_spades",  @"king_of_clubs", @"king_of_diamonds", @"king_of_hearts",  @"king_of_spades", @"queen_of_clubs", @"queen_of_diamonds", @"queen_of_hearts", @"queen_of_spades", nil];
    
    self.cardsImageArray = [NSMutableArray new];
    for (NSString *cardName in self.cardsArray) {
        UIImage *image = [UIImage imageNamed:cardName];
        [self.cardsImageArray addObject:image];
    }
}

- (void)shuffleCards{
    for (UIImage *card in self.cardsImageArray) {
        
    }
}











@end
