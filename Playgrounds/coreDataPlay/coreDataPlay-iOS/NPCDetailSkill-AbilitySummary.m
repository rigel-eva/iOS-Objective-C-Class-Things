//
//  NPCDetailSkill-AbilitySummary.m
//  coreDataPlay
//
//  Created by Alex Maguire on 12/7/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "NPCDetailSkill-AbilitySummary.h"
#import "testFunctions.h"
@implementation NPCDetailSkill_AbilitySummary{
    NSMutableArray *cells;
}
@synthesize toView;
-(void)viewWillAppear:(BOOL)animated{
    //Essentially we want to refresh our stuff...
    [self refreshData];
}
-(void)refreshData{
    [self fillWithSkills];
    [listing reloadData];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //toView=[testFunctions generateTestObject];
    [self fillWithSkills];
}
- (void)fillWithSkills{
    cells=[[NSMutableArray alloc]init];//We want to get rid of any data we had in the cell ...
    //Ok Safety check: Do we have a game object to work off of?
    if(toView!=nil){
        //Ok, neat, we do ... let's go ahead and get the skills then ...
        for(int i=0; i<toView.skills.count; i++){
            //And put them into a cell!
//error This code doesn't work!!!
            //Long story short, it seems like the very thing I was planing on using, pointers to the same object came and bit me right here ... hmm ...
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"summarySkillCell" owner:self options:nil];
            summarySkillCell *output=[nib objectAtIndex:0];
            output.toView=toView;
            output.skillReference=[toView.skills objectAtIndex:i];
            [output updateCell];
            [cells addObject:output];
        }
    }
}
-(void)fillWithSpecialAbilities{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)listingsSwitched:(id)sender {
    [listing reloadData];//Essentially we are going to be expecting that the cells are Probably going to be different (Man sarcasm doesn't really come across well ...)
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return cells.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [cells objectAtIndex:[indexPath row]];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
@end
