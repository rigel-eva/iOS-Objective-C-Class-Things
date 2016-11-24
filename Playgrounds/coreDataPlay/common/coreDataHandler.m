//
//  coreDataHandler.m
//  coreDataPlay
//
//  Created by Alex Maguire on 11/24/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "coreDataHandler.h"

@implementation coreDataHandler
@synthesize managedObjectContext;
-(id)init{
    self=[super init];
    if(!self)return nil;
    [self initializeCoreData];
    return self;
}
- (void)initializeCoreData
{
    NSString *modelName=@"data";//Should be the same as whatever the .xcdatamodeld file is called
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:modelName withExtension:@"momd"];//Gets the URL of our data module//MAKE SURE THE NAME IS RIGHT FOR THE LOVE OF PEAT!
    NSManagedObjectModel *mom = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];//Initialize the managed object module
    NSAssert(mom != nil, @"Error initializing Managed Object Model");//Provides Ultimatum, either the Managed object module has successfully initilized, or we crash.
    
    NSPersistentStoreCoordinator *psc = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:mom];//Gives us a single store of data
    NSManagedObjectContext *moc = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];//Holds our unsaved data
    [moc setPersistentStoreCoordinator:psc];//Can't find documentation... If I had to assume this sets up our managed object context with a baseline with what we already have saved
    [self setManagedObjectContext:moc];//Sets up our saved data (I think?)
    NSFileManager *fileManager = [NSFileManager defaultManager];//I think this allows us to save our data stack
    NSURL *documentsURL = [[fileManager URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
    NSURL *storeURL = [documentsURL URLByAppendingPathComponent:@"DataModel.sqlite"];
    
    dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void) {
        NSError *error = nil;
        NSPersistentStoreCoordinator *psc = [[self managedObjectContext] persistentStoreCoordinator];
        NSPersistentStore *store = [psc addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error];
        NSAssert(store != nil, @"Error initializing PSC: %@\n%@", [error localizedDescription], [error userInfo]);
    });
}

@end
