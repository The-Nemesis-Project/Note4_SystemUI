.class public Lcom/android/systemui/recents/views/TaskView;
.super Landroid/widget/FrameLayout;
.source "TaskView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/systemui/recents/model/Task$TaskCallbacks;
.implements Lcom/android/systemui/recents/views/TaskViewFooter$TaskFooterViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Recents_TaskView"


# instance fields
.field private final MAX_TASKS:I

.field mActionButtonView:Landroid/view/View;

.field mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

.field mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

.field mClipViewInStack:Z

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mContent:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field mDim:I

.field mDimAnimator:Landroid/animation/ObjectAnimator;

.field mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field mDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field mFocusAnimationsEnabled:Z

.field mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

.field mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

.field mIsFocused:Z

.field mIsFullScreenView:Z

.field mLayerPaint:Landroid/graphics/Paint;

.field mMaxDimScale:F

.field mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field mTask:Lcom/android/systemui/recents/model/Task;

.field mTaskDataLoaded:Z

.field mTaskProgress:F

.field mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

.field mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

.field mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 97
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 98
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mLayerPaint:Landroid/graphics/Paint;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    .line 122
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/recents/views/TaskView;->MAX_TASKS:I

    .line 125
    new-instance v0, Lcom/android/systemui/recents/views/TaskView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/TaskView$1;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 148
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 149
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackMaxDim:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/recents/views/TaskView;->mMaxDimScale:F

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    .line 151
    new-instance v0, Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;-><init>(Lcom/android/systemui/recents/views/TaskView;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    .line 152
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    .line 153
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const-string v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 154
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTaskProgress()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTaskProgress(F)V

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDim()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDim(I)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/FakeShadowDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/recents/RecentsConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 161
    return-void
.end method

.method private isFactoryMode()Z
    .locals 1

    .prologue
    .line 709
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method animateDimToProgress(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 5
    .param p1, "delay"    # I
    .param p2, "duration"    # I
    .param p3, "postAnimRunnable"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 900
    const-string v2, "Recents_TaskView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateDimToProgress delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimFromTaskProgress()I

    move-result v1

    .line 902
    .local v1, "toDim":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDim()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 903
    const-string v2, "dim"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 904
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 905
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 906
    if-eqz p3, :cond_0

    .line 907
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 909
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 911
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method animateFooterVisibility(ZI)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "duration"    # I

    .prologue
    .line 835
    const-string v0, "Recents_TaskView"

    const-string v1, "animateFooterVisibility is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    if-eqz v0, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewFooter;->animateFooterVisibility(ZI)V

    goto :goto_0
.end method

.method dismissTask()V
    .locals 3

    .prologue
    .line 645
    const-string v1, "Recents_TaskView"

    const-string v2, "dismissTask is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    move-object v0, p0

    .line 647
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    new-instance v1, Lcom/android/systemui/recents/views/TaskView$10;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/views/TaskView$10;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->startDeleteTaskAnimation(Ljava/lang/Runnable;)V

    .line 654
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimDuration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    .line 655
    return-void
.end method

.method enableFocusAnimations()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 987
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    .line 988
    .local v0, "wasFocusAnimationsEnabled":Z
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    .line 989
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 991
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(Z)V

    .line 993
    :cond_0
    return-void
.end method

.method public getDim()I
    .locals 3

    .prologue
    .line 893
    const-string v0, "Recents_TaskView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDim is called mDim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDim:I

    return v0
.end method

.method getDimFromTaskProgress()I
    .locals 5

    .prologue
    .line 915
    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mMaxDimScale:F

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgress:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 916
    .local v0, "dim":F
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public getMaxFooterHeight()I
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewFooter;->mMaxFooterHeight:I

    .line 828
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTask()Lcom/android/systemui/recents/model/Task;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method public getTaskProgress()F
    .locals 1

    .prologue
    .line 855
    iget v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgress:F

    return v0
.end method

.method getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    return-object v0
.end method

.method public handleOnClickMultiWindowBtn(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 10
    .param p1, "taskId"    # I
    .param p2, "baseIntent"    # Landroid/content/Intent;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 663
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v3, "mwIntent":Landroid/content/Intent;
    const-string v4, "com.sec.android.app.FlashBarService"

    const-string v5, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    const-string v4, "recentUI.multiwindow"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 666
    const-string v4, "recentUI.multiwindow.package"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    const-string v4, "recentUI.multiwindow.taskId"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 669
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    :goto_0
    if-ltz p1, :cond_1

    .line 675
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    new-instance v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    invoke-virtual {v4, p1, v9, v7, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 688
    :goto_1
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskView;->isFactoryMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 689
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const-string v5, "Factory mode cannot support multi window"

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 693
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 694
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.sec.android.app.FlashBarService"

    const-string v5, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    const-string v4, "recentUI.multiwindow"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 696
    const-string v4, "recentUI.multiwindow.package"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    const-string v4, "recentUI.multiwindow.taskId"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 700
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 705
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v4}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->dismiss()V

    .line 706
    return-void

    .line 670
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 677
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v1, p2

    .line 678
    .restart local v1    # "intent":Landroid/content/Intent;
    const v4, 0x10104000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 683
    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 684
    .local v2, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 685
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x2

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v1, v9, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 701
    .end local v2    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :catch_1
    move-exception v0

    .line 702
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public handleOnLongClickTaskView(Landroid/view/View;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 24
    .param p1, "v"    # Landroid/view/View;
    .param p2, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 714
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 715
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    .line 716
    .local v3, "appName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    .line 718
    .local v17, "taskId":I
    const/16 v19, 0x0

    .line 719
    .local v19, "topActivityInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "activity"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager;

    .line 720
    .local v12, "mActivityManager":Landroid/app/ActivityManager;
    const/16 v18, 0x0

    .line 721
    .local v18, "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v20, 0x64

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v18

    .line 722
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 723
    .local v16, "t":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 725
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    .line 726
    .local v14, "pm":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    const/16 v21, 0xc0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v14, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 736
    .end local v14    # "pm":Landroid/content/pm/IPackageManager;
    .end local v16    # "t":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "multi_window_enabled"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-nez v20, :cond_3

    const/4 v10, 0x1

    .line 738
    .local v10, "isMultiWindowDisabled":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "easy_mode_switch"

    const/16 v22, 0x1

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v20

    if-nez v20, :cond_4

    const/4 v9, 0x1

    .line 740
    .local v9, "isEasyModeEnabled":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "enabled_accessibility_s_talkback"

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/4 v11, 0x1

    .line 743
    .local v11, "isTalkBackEnabled":Z
    :goto_3
    if-nez v9, :cond_2

    if-nez v11, :cond_2

    if-eqz v10, :cond_6

    .line 744
    :cond_2
    const-string v20, "Recents_TaskView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Do not execute because of that :: isEasyModeEnabled = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", isTalkBackEnabled = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", isMultiWindowDisabled = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :goto_4
    return-void

    .line 728
    .end local v9    # "isEasyModeEnabled":Z
    .end local v10    # "isMultiWindowDisabled":Z
    .end local v11    # "isTalkBackEnabled":Z
    .restart local v16    # "t":Landroid/app/ActivityManager$RunningTaskInfo;
    :catch_0
    move-exception v6

    .line 729
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 736
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v16    # "t":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 738
    .restart local v10    # "isMultiWindowDisabled":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 740
    .restart local v9    # "isEasyModeEnabled":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    .line 753
    .restart local v11    # "isTalkBackEnabled":Z
    :cond_6
    if-ltz v17, :cond_7

    if-nez v8, :cond_8

    .line 754
    :cond_7
    const-string v20, "Recents_TaskView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "task has unvalid elements taskId = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 758
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 760
    if-nez v19, :cond_9

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    .line 763
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_b

    .line 764
    :cond_a
    new-instance v4, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x103012b

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v4, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 765
    .local v4, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1040ba7

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 769
    .end local v4    # "context":Landroid/content/Context;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui/recents/views/TaskViewHeader;->setVisibility(I)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 771
    const-string v20, ""

    const-string v21, ""

    invoke-static/range {v20 .. v21}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    .line 772
    .local v5, "data":Landroid/content/ClipData;
    new-instance v15, Landroid/view/View$DragShadowBuilder;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 773
    .local v15, "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v5, v15, v1, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 774
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 776
    new-instance v13, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 777
    .local v13, "mwIntent":Landroid/content/Intent;
    const-string v20, "com.sec.android.app.FlashBarService"

    const-string v21, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    const-string v20, "com.sec.android.action.RECENT_LONG_PRESS_LAUNCH"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    const-string v20, "com.sec.android.multiwindow.extra.intent"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 780
    const-string v20, "com.sec.android.multiwindow.extra.taskId"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 781
    const-string v20, "com.sec.android.multiwindow.extra.support_multiwindow"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 784
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 789
    .end local v5    # "data":Landroid/content/ClipData;
    .end local v13    # "mwIntent":Landroid/content/Intent;
    .end local v15    # "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->dismiss()V

    goto/16 :goto_4

    .line 785
    .restart local v5    # "data":Landroid/content/ClipData;
    .restart local v13    # "mwIntent":Landroid/content/Intent;
    .restart local v15    # "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    :catch_1
    move-exception v6

    .line 786
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public isFocusedTask()Z
    .locals 1

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFullScreenView()Z
    .locals 1

    .prologue
    .line 804
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1107
    move-object v5, p0

    .line 1108
    .local v5, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eq p1, p0, :cond_0

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-eq p1, v6, :cond_0

    move v1, v8

    .line 1109
    .local v1, "delayViewClick":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1111
    new-instance v6, Lcom/android/systemui/recents/views/TaskView$11;

    invoke-direct {v6, p0, p1, v5}, Lcom/android/systemui/recents/views/TaskView$11;-><init>(Lcom/android/systemui/recents/views/TaskView;Landroid/view/View;Lcom/android/systemui/recents/views/TaskView;)V

    const-wide/16 v8, 0x7d

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/systemui/recents/views/TaskView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1191
    :goto_1
    return-void

    .end local v1    # "delayViewClick":Z
    :cond_0
    move v1, v7

    .line 1108
    goto :goto_0

    .line 1149
    .restart local v1    # "delayViewClick":Z
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v6, :cond_2

    .line 1151
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    .line 1152
    .local v4, "translationZ":F
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationZ(F)V

    .line 1155
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowEnabled:Z

    if-eqz v6, :cond_2

    .line 1157
    const/4 v3, 0x5

    .line 1158
    .local v3, "theme":I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1159
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0d04a6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1160
    const v6, 0x7f0d04a7

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1161
    const v6, 0x104000a

    new-instance v7, Lcom/android/systemui/recents/views/TaskView$12;

    invoke-direct {v7, p0, v5, p1}, Lcom/android/systemui/recents/views/TaskView$12;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskView;Landroid/view/View;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1172
    const/high16 v6, 0x1040000

    new-instance v7, Lcom/android/systemui/recents/views/TaskView$13;

    invoke-direct {v7, p0, v4}, Lcom/android/systemui/recents/views/TaskView$13;-><init>(Lcom/android/systemui/recents/views/TaskView;F)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1179
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1180
    .local v2, "isAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 1185
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "isAlertDialog":Landroid/app/AlertDialog;
    .end local v3    # "theme":I
    .end local v4    # "translationZ":F
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v10

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eq p1, v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v6, :cond_6

    :cond_3
    move v6, v8

    :goto_2
    invoke-interface {v9, v5, v10, v6}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V

    .line 1187
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eq p1, v10, :cond_4

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v10, :cond_5

    :cond_4
    move v7, v8

    :cond_5
    invoke-interface {v6, v5, v9, v7}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onAltTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V

    .line 1189
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v6}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->dismiss()V

    goto :goto_1

    :cond_6
    move v6, v7

    .line 1185
    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "Recents_TaskView"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const v0, 0x7f0e0234

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mContent:Landroid/view/View;

    .line 183
    const v0, 0x7f0e0237

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 184
    const v0, 0x7f0e0235

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    .line 185
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->enableTaskBarClip(Landroid/view/View;)V

    .line 186
    const v0, 0x7f0e0236

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/recents/views/TaskView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskView$2;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/views/TaskViewFooter;->setCallbacks(Lcom/android/systemui/recents/views/TaskViewFooter$TaskFooterViewCallbacks;)V

    .line 198
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 972
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 973
    if-nez p1, :cond_0

    .line 974
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->unsetFocusedTask()V

    .line 976
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 1197
    const-string v0, "Recents_TaskView"

    const-string v1, "onLongClick is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewAppInfoClicked(Lcom/android/systemui/recents/views/TaskView;)V

    .line 1203
    :goto_0
    return v2

    .line 1202
    :cond_0
    invoke-virtual {p0, p1, p0}, Lcom/android/systemui/recents/views/TaskView;->handleOnLongClickTaskView(Landroid/view/View;Lcom/android/systemui/recents/views/TaskView;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    .line 202
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 203
    .local v2, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 205
    .local v0, "height":I
    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingLeft:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 206
    .local v3, "widthWithoutPadding":I
    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingTop:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingBottom:I

    sub-int v1, v4, v5

    .line 209
    .local v1, "heightWithoutPadding":I
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mContent:Landroid/view/View;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 213
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 215
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v4, :cond_0

    .line 216
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewLockToAppButtonHeight:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewFooter;->measure(II)V

    .line 221
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 224
    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    if-eqz v4, :cond_1

    .line 226
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->measure(II)V

    .line 235
    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/recents/views/TaskView;->setMeasuredDimension(II)V

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->invalidateOutline()V

    .line 237
    return-void

    .line 231
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->measure(II)V

    goto :goto_0
.end method

.method public onTaskBound(Lcom/android/systemui/recents/model/Task;)V
    .locals 8
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/16 v7, 0x8

    .line 999
    const-string v5, "Recents_TaskView"

    const-string v6, "onTaskBound is getting called"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 1001
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v5, p0}, Lcom/android/systemui/recents/model/Task;->setCallbacks(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    .line 1002
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v5

    if-nez v5, :cond_2

    .line 1004
    iget-boolean v5, p1, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    .line 1009
    :goto_0
    iget-boolean v5, p1, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 1010
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1013
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1014
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1015
    .local v1, "ipm":Landroid/content/pm/IPackageManager;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const v6, -0x200001

    and-int/2addr v5, v6

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1017
    const/4 v4, 0x0

    .line 1019
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v5, 0x0

    const/16 v6, 0x80

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v7, v7, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-interface {v1, v0, v5, v6, v7}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1023
    :goto_1
    if-eqz v4, :cond_1

    .line 1024
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 1026
    :cond_1
    return-void

    .line 1006
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-boolean v5, p1, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewLockToAppLongAnimDuration:I

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    goto :goto_0

    .line 1020
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "ipm":Landroid/content/pm/IPackageManager;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v3

    .line 1021
    .local v3, "re":Landroid/os/RemoteException;
    const-string v5, "Recents_TaskView"

    const-string v6, "ResolveInfo RemoteEception"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onTaskDataLoaded()V
    .locals 2

    .prologue
    .line 1030
    const-string v0, "Recents_TaskView"

    const-string v1, "onTaskDataLoaded is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v0, :cond_1

    .line 1033
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    if-eqz v0, :cond_2

    .line 1034
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-static {}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getLastScreenshot()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->bindToScreenshot(Landroid/graphics/Bitmap;)Z

    .line 1038
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->rebindToTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1040
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1041
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1042
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1043
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/views/TaskViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    if-eqz v0, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1053
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskDataLoaded:Z

    .line 1054
    return-void

    .line 1036
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->rebindToTask(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_0
.end method

.method public onTaskDataUnloaded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1058
    const-string v0, "Recents_TaskView"

    const-string v1, "onTaskDataUnloaded is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v0, :cond_1

    .line 1061
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/model/Task;->setCallbacks(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    .line 1062
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->unbindFromTask()V

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->unbindFromTask()V

    .line 1065
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1066
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1067
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1068
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1073
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1076
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskDataLoaded:Z

    .line 1077
    return-void
.end method

.method public onTaskFooterHeightChanged(II)V
    .locals 2
    .param p1, "height"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 1094
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setOutlineClipBottom(I)V

    .line 1101
    :goto_0
    return-void

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    sub-int v1, p2, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setOutlineClipBottom(I)V

    goto :goto_0
.end method

.method prepareEnterRecentsAnimation(ZZI)V
    .locals 4
    .param p1, "isTaskViewLaunchTargetTask"    # Z
    .param p2, "occludesLaunchTarget"    # Z
    .param p3, "offscreenY"    # I

    .prologue
    const/4 v3, 0x0

    .line 308
    const-string v1, "Recents_TaskView"

    const-string v2, "prepareEnterRecentsAnimation is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDim()I

    move-result v0

    .line 310
    .local v0, "initialDim":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithScreenshot:Z

    if-eqz v1, :cond_1

    .line 311
    if-eqz p1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    invoke-virtual {v1, v3, v3}, Lcom/android/systemui/recents/views/TaskViewFooter;->animateFooterVisibility(ZI)V

    .line 343
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDim(I)V

    .line 345
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->prepareEnterRecentsAnimation(Z)V

    .line 346
    return-void

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    if-eqz v1, :cond_0

    .line 321
    if-eqz p1, :cond_2

    .line 323
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 325
    const/4 v0, 0x0

    goto :goto_0

    .line 326
    :cond_2
    if-eqz p2, :cond_0

    .line 328
    int-to-float v1, p3

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    goto :goto_0
.end method

.method prepareTaskTransformForFilterTaskHidden(Lcom/android/systemui/recents/views/TaskViewTransform;)V
    .locals 3
    .param p1, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/4 v2, 0x0

    .line 288
    const-string v0, "Recents_TaskView"

    const-string v1, "prepareTaskTransformForFilterTaskHidden is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iput v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 290
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    add-int/lit16 v0, v0, 0xc8

    iput v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    .line 291
    iput v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 292
    return-void
.end method

.method prepareTaskTransformForFilterTaskVisible(Lcom/android/systemui/recents/views/TaskViewTransform;)V
    .locals 2
    .param p1, "fromTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    .line 300
    const-string v0, "Recents_TaskView"

    const-string v1, "prepareTaskTransformForFilterTaskVisible is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 302
    return-void
.end method

.method resetViewProperties()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDim(I)V

    .line 279
    invoke-static {p0}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset(Landroid/view/View;)V

    .line 280
    return-void
.end method

.method setCallbacks(Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    .line 166
    return-void
.end method

.method setClipViewInStack(Z)V
    .locals 1
    .param p1, "clip"    # Z

    .prologue
    .line 817
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    if-eq p1, v0, :cond_0

    .line 818
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    .line 819
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClipStateChanged(Lcom/android/systemui/recents/views/TaskView;)V

    .line 821
    :cond_0
    return-void
.end method

.method public setDim(I)V
    .locals 5
    .param p1, "dim"    # I

    .prologue
    .line 860
    const-string v3, "Recents_TaskView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDim is called dim="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/draw header:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iput p1, p0, Lcom/android/systemui/recents/views/TaskView;->mDim:I

    .line 863
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    .line 864
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 865
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 867
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->useHardwareLayers:Z

    if-eqz v2, :cond_4

    .line 869
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredHeight()I

    move-result v2

    if-lez v2, :cond_2

    .line 870
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_1

    .line 871
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 872
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 875
    :cond_1
    iget v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDim:I

    rsub-int v1, v2, 0xff

    .line 876
    .local v1, "inverse":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    const/16 v3, 0xff

    invoke-static {v3, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 877
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mLayerPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 878
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mContent:Landroid/view/View;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 889
    .end local v1    # "inverse":I
    :cond_2
    :goto_1
    return-void

    .line 860
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 881
    :cond_4
    iget v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDim:I

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float v0, v2, v3

    .line 882
    .local v0, "dimAlpha":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    if-eqz v2, :cond_5

    .line 883
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setDimAlpha(F)V

    .line 885
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    if-nez v2, :cond_2

    .line 886
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setDimAlpha(I)V

    goto :goto_1
.end method

.method public setFocusedTask()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 932
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    .line 933
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(Z)V

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onFocusChanged(Z)V

    .line 940
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewFocusChanged(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 944
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setFocusableInTouchMode(Z)V

    .line 945
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->requestFocus()Z

    .line 946
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setFocusableInTouchMode(Z)V

    .line 947
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->invalidate()V

    .line 948
    return-void
.end method

.method setIsFullScreen(Z)V
    .locals 2
    .param p1, "isFullscreen"    # Z

    .prologue
    .line 794
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    .line 795
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setIsFullscreen(Z)V

    .line 796
    if-eqz p1, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setOutlineClipBottom(I)V

    .line 800
    :cond_0
    return-void
.end method

.method setLongTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1087
    if-eqz p1, :cond_0

    move-object v0, p0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1088
    return-void

    .line 1087
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setNoUserInteractionState()V
    .locals 4

    .prologue
    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, "isKnoxMode":Z
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 632
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/4 v0, 0x1

    .line 634
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionState()V

    .line 635
    const/4 v1, 0x0

    .line 636
    .local v1, "showMultiwindowButton":Z
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/Task;->isMultiWindowVisible:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-boolean v2, v2, Lcom/android/systemui/recents/views/TaskViewHeader;->mFeatureMultiwindowRecentUI:Z

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 637
    const/4 v1, 0x1

    .line 639
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionStateForMultiWindow(Z)V

    .line 640
    return-void

    .line 632
    .end local v1    # "showMultiwindowButton":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTaskProgress(F)V
    .locals 3
    .param p1, "p"    # F

    .prologue
    .line 847
    iput p1, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgress:F

    .line 848
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setAlpha(F)V

    .line 849
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->updateDimFromTaskProgress()V

    .line 850
    const-string v0, "Recents_TaskView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTaskProgress is called mTaskProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return-void
.end method

.method setTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1081
    if-eqz p1, :cond_0

    move-object v0, p0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1082
    return-void

    .line 1081
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldClipViewInStack()Z
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method startDeleteTaskAnimation(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 589
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 590
    const-string v0, "Recents_TaskView"

    const-string v1, "startDeleteTaskAnimation is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimTranslationXPx:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/TaskView$9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/views/TaskView$9;-><init>(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 612
    return-void
.end method

.method startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
    .locals 20
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    .prologue
    .line 350
    const-string v16, "Recents_TaskView"

    const-string v17, "startEnterRecentsAnimation is called"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 352
    .local v14, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v11, 0x0

    .line 354
    .local v11, "startDelay":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithScreenshot:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 356
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskRect:Landroid/graphics/Rect;

    .line 357
    .local v12, "taskRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    move/from16 v16, v0

    mul-int/lit8 v5, v16, 0xa

    .line 358
    .local v5, "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v15, v0, Landroid/graphics/Rect;->top:I

    .line 359
    .local v15, "windowInsetTop":I
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    move/from16 v17, v0

    mul-float v13, v16, v17

    .line 360
    .local v13, "taskScale":F
    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v9, v16, v17

    .line 361
    .local v9, "scaledYOffset":F
    int-to-float v0, v15

    move/from16 v16, v0

    mul-float v16, v16, v13

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v8, v0

    .line 362
    .local v8, "scaledWindowInsetTop":F
    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v17, v8, v9

    sub-float v7, v16, v17

    .line 364
    .local v7, "scaledTranslationY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v11, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/systemui/recents/views/TaskView$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$3;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v5, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->animateClipTop(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 376
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v16, v16, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 377
    .local v10, "size":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/RecentsConfiguration;->hasHorizontalLayout()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v17, v10

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->animateClipRight(II)V

    .line 383
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    int-to-long v0, v5

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    new-instance v17, Lcom/android/systemui/recents/views/TaskView$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView$4;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 419
    .end local v5    # "duration":I
    .end local v7    # "scaledTranslationY":F
    .end local v8    # "scaledWindowInsetTop":F
    .end local v9    # "scaledYOffset":F
    .end local v10    # "size":I
    .end local v12    # "taskRect":Landroid/graphics/Rect;
    .end local v13    # "taskScale":F
    .end local v15    # "windowInsetTop":I
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 516
    :goto_2
    new-instance v16, Lcom/android/systemui/recents/views/TaskView$8;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$8;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    div-int/lit8 v17, v11, 0x2

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 522
    return-void

    .line 380
    .restart local v5    # "duration":I
    .restart local v7    # "scaledTranslationY":F
    .restart local v8    # "scaledWindowInsetTop":F
    .restart local v9    # "scaledYOffset":F
    .restart local v10    # "size":I
    .restart local v12    # "taskRect":Landroid/graphics/Rect;
    .restart local v13    # "taskScale":F
    .restart local v15    # "windowInsetTop":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredHeight()I

    move-result v17

    add-int v18, v15, v10

    sub-int v17, v17, v18

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->animateClipBottom(II)V

    goto :goto_0

    .line 417
    .end local v5    # "duration":I
    .end local v7    # "scaledTranslationY":F
    .end local v8    # "scaledWindowInsetTop":F
    .end local v9    # "scaledYOffset":F
    .end local v10    # "size":I
    .end local v12    # "taskRect":Landroid/graphics/Rect;
    .end local v13    # "taskScale":F
    .end local v15    # "windowInsetTop":I
    :cond_1
    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    goto :goto_1

    .line 421
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDelay:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDuration:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskView;->animateDimToProgress(IILandroid/animation/Animator$AnimatorListener;)V

    .line 441
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 444
    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDuration:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDelay:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDuration:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 475
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v11, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDelay:I

    goto/16 :goto_2

    .line 455
    :cond_4
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskOccludesLaunchTarget:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 456
    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewAffiliateGroupEnterOffsetPx:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    .line 457
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setAlpha(F)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDelay:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    new-instance v17, Lcom/android/systemui/recents/views/TaskView$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView$6;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 472
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    goto/16 :goto_3

    .line 477
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 479
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentStackViewCount:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentStackViewIndex:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    add-int/lit8 v6, v16, -0x1

    .line 480
    .local v6, "frontIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDelay:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    move/from16 v17, v0

    mul-int v17, v17, v6

    add-int v4, v16, v17

    .line 483
    .local v4, "delay":I
    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setScaleX(F)V

    .line 484
    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setScaleY(F)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    move/from16 v16, v0

    if-nez v16, :cond_6

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    .line 488
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    int-to-long v0, v4

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    move/from16 v18, v0

    mul-int v18, v18, v6

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    new-instance v17, Lcom/android/systemui/recents/views/TaskView$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView$7;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 503
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 506
    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    .line 507
    move v11, v4

    .line 509
    goto/16 :goto_2

    .line 511
    .end local v4    # "delay":I
    .end local v6    # "frontIndex":I
    :cond_7
    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    goto/16 :goto_2
.end method

.method startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 4
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    .line 526
    const-string v0, "Recents_TaskView"

    const-string v1, "startExitToHomeAnimation is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->offscreenTranslationY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToHomeDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementAsRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 535
    iget-object v0, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 536
    return-void
.end method

.method startLaunchTaskAnimation(Ljava/lang/Runnable;ZZZ)V
    .locals 8
    .param p1, "postAnimRunnable"    # Ljava/lang/Runnable;
    .param p2, "isLaunchingTask"    # Z
    .param p3, "occludesLaunchTarget"    # Z
    .param p4, "lockToTask"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 541
    const-string v2, "Recents_TaskView"

    const-string v3, "startLaunchTaskAnimation is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    if-eqz p2, :cond_3

    .line 544
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->startLaunchTaskAnimation(Ljava/lang/Runnable;)V

    .line 547
    iget v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDim:I

    if-lez v2, :cond_0

    .line 548
    const-string v2, "dim"

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v5, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 549
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarExitAnimDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 550
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 551
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 555
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    if-nez p4, :cond_1

    .line 556
    const v1, 0x3f666666    # 0.9f

    .line 557
    .local v1, "toScale":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 561
    .end local v1    # "toScale":F
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarExitAnimDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 584
    :cond_2
    :goto_0
    return-void

    .line 570
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->startLaunchTaskDismissAnimation()V

    .line 571
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/Task;->isMultiWindowVisible:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->startLaunchMultiWindowAnimation()V

    .line 574
    :cond_4
    if-eqz p3, :cond_2

    .line 575
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTranslationY()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewAffiliateGroupEnterOffsetPx:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarExitAnimDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method startNoUserInteractionAnimation()V
    .locals 4

    .prologue
    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, "isKnoxMode":Z
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 618
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/4 v0, 0x1

    .line 620
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->startNoUserInteractionAnimation()V

    .line 621
    const/4 v1, 0x0

    .line 622
    .local v1, "showMultiwindowButton":Z
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/Task;->isMultiWindowVisible:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-boolean v2, v2, Lcom/android/systemui/recents/views/TaskViewHeader;->mFeatureMultiwindowRecentUI:Z

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 623
    const/4 v1, 0x1

    .line 625
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->startNoUserInteractionAnimationForMultiWindow(Z)V

    .line 626
    return-void

    .line 618
    .end local v1    # "showMultiwindowButton":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method unsetFocusedTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 954
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    .line 955
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(Z)V

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onFocusChanged(Z)V

    .line 963
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewFocusChanged(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 964
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->invalidate()V

    .line 965
    return-void
.end method

.method updateDimFromTaskProgress()V
    .locals 1

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimFromTaskProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDim(I)V

    .line 922
    return-void
.end method

.method updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;I)V
    .locals 1
    .param p1, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "duration"    # I

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 242
    return-void
.end method

.method updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 8
    .param p1, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "duration"    # I
    .param p3, "updateCallback"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 248
    const-string v0, "Recents_TaskView"

    const-string v1, "updateViewPropertiesToTaskTransform is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-nez v0, :cond_3

    move v5, v7

    :goto_1
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskViewTransform;->applyToTaskView(Landroid/view/View;ILandroid/view/animation/Interpolator;ZZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 262
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 266
    :cond_2
    if-gtz p2, :cond_4

    .line 267
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTaskProgress(F)V

    goto :goto_0

    :cond_3
    move v5, v4

    .line 258
    goto :goto_1

    .line 269
    :cond_4
    const-string v0, "taskProgress"

    new-array v1, v7, [F

    iget v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    .line 270
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 271
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
