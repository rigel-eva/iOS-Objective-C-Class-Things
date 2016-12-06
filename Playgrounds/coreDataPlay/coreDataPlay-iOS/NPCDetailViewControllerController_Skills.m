//
//  NPCDetailViewControllerController_Skills.m
//  coreDataPlay
//
//  Created by Alex Maguire on 12/5/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "NPCDetailViewControllerController_Skills.h"
#import "baseSkillCell.h"
#import "testFunctions.h"
@implementation NPCDetailViewControllerController_Skills{
    NSMutableArray *skillListing;
}
@synthesize toEdit;
-(void)viewDidLoad{
    [super viewDidLoad];
    skillListing=[[NSMutableArray alloc] init];
    toEdit=[testFunctions generateTestObject];
    for(NSString *key in toEdit.skills){
        [skillListing addObject:[NSString stringWithFormat:@"%@",key]];
    }
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return skillListing.count;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier=@"skill";
    //baseSkillCell *cell=(baseSkillCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    //if(cell==nil){
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"basicSkillCell" owner:self options:nil];
        baseSkillCell *cell=[nib objectAtIndex:0];
    //}
    cell.toEdit=toEdit;
    cell.skillName=[skillListing objectAtIndex:[indexPath row]];
    return cell;
}
@end
