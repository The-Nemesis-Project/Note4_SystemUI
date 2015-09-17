.class public Lcom/android/systemui/recents/model/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/Task$TaskKey;,
        Lcom/android/systemui/recents/model/Task$ComponentNameKey;,
        Lcom/android/systemui/recents/model/Task$TaskCallbacks;
    }
.end annotation


# instance fields
.field public activityIcon:Landroid/graphics/drawable/Drawable;

.field public activityInfo:Landroid/content/pm/ActivityInfo;

.field public activityLabel:Ljava/lang/String;

.field public applicationIcon:Landroid/graphics/drawable/Drawable;

.field public colorPrimary:I

.field public group:Lcom/android/systemui/recents/model/TaskGrouping;

.field public icon:Landroid/graphics/Bitmap;

.field public iconFilename:Ljava/lang/String;

.field public isActive:Z

.field public isLaunchTarget:Z

.field public isMultiWindowVisible:Z

.field public key:Lcom/android/systemui/recents/model/Task$TaskKey;

.field public lockToTaskEnabled:Z

.field public lockToThisTask:Z

.field mCb:Lcom/android/systemui/recents/model/Task$TaskCallbacks;

.field public multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field public taskAffiliation:I

.field public taskAffiliationColor:I

.field public textColorPrimary:I

.field public thumbnail:Landroid/graphics/Bitmap;

.field public useLightOnPrimaryColor:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/model/Task$TaskKey;ZIILjava/lang/String;Landroid/graphics/drawable/Drawable;IIZZLandroid/graphics/Bitmap;Ljava/lang/String;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/content/pm/ActivityInfo;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-eq p3, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    if-eqz p4, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iput p3, p0, Lcom/android/systemui/recents/model/Task;->taskAffiliation:I

    iput p4, p0, Lcom/android/systemui/recents/model/Task;->taskAffiliationColor:I

    iput-object p5, p0, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    :goto_2
    iput p4, p0, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    iput p8, p0, Lcom/android/systemui/recents/model/Task;->textColorPrimary:I

    iget v3, p0, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/android/systemui/recents/misc/Utilities;->computeContrastBetweenColors(II)F

    move-result v4

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_3

    const/high16 v3, 0x40000000    # 2.0f

    :goto_3
    cmpl-float v3, v4, v3

    if-lez v3, :cond_4

    const/4 v3, 0x1

    :goto_4
    iput-boolean v3, p0, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    iput-boolean p2, p0, Lcom/android/systemui/recents/model/Task;->isActive:Z

    if-eqz p10, :cond_5

    if-eqz p9, :cond_5

    const/4 v3, 0x1

    :goto_5
    iput-boolean v3, p0, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    iput-boolean p10, p0, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->iconFilename:Ljava/lang/String;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isMultiWindowVisible:Z

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move p4, p7

    goto :goto_2

    :cond_3
    const/high16 v3, 0x40400000    # 3.0f

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto :goto_5
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/recents/model/Task;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, p1, Lcom/android/systemui/recents/model/Task;->taskAffiliation:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->taskAffiliation:I

    iget v0, p1, Lcom/android/systemui/recents/model/Task;->taskAffiliationColor:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->taskAffiliationColor:I

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    iget v0, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    iget v0, p1, Lcom/android/systemui/recents/model/Task;->textColorPrimary:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->textColorPrimary:I

    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isActive:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isActive:Z

    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isMultiWindowVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isMultiWindowVisible:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v0
.end method

.method public notifyTaskDataLoaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p2, p0, Lcom/android/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCb:Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCb:Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/model/Task$TaskCallbacks;->onTaskDataLoaded()V

    :cond_0
    return-void
.end method

.method public notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p2, p0, Lcom/android/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCb:Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCb:Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/model/Task$TaskCallbacks;->onTaskDataUnloaded()V

    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->mCb:Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    return-void
.end method

.method public setGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This task is already assigned to a group."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "no group"

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    iget v1, v1, Lcom/android/systemui/recents/model/TaskGrouping;->affiliation:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
