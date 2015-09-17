.class public Lcom/sec/android/cover/sviewcover/SViewCoverPager;
.super Lcom/sec/android/cover/widget/PagedView;
.source "SViewCoverPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SViewCoverPager"


# instance fields
.field private mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

.field private mEnableTouch:Z

.field private mLastRegisteredPage:I

.field private mSnapTo:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, -0x1

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/widget/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mEnableTouch:Z

    .line 42
    iput v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mSnapTo:I

    .line 43
    iput v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mLastRegisteredPage:I

    .line 56
    return-void
.end method

.method private isBlockedKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 88
    .local v0, "action":I
    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_1

    .line 90
    :cond_0
    const-string v1, "SViewCoverPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not blocked, action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v1, 0x0

    .line 94
    :goto_0
    return v1

    .line 93
    :cond_1
    const-string v1, "SViewCoverPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blocked, action= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v0, -0x1

    .line 104
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 105
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 111
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    if-lt v0, p2, :cond_0

    .line 112
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    .line 114
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/cover/widget/PagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 115
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mEnableTouch:Z

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 80
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mEnableTouch:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->isBlockedKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraPage(I)Z
    .locals 3
    .param p1, "pageIndex"    # I

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 211
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_camera_layout:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected notifyPageSwitching(I)V
    .locals 4
    .param p1, "whichPage"    # I

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->notifyPageSwitching(I)V

    .line 186
    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mLastRegisteredPage:I

    if-eq v3, p1, :cond_2

    .line 187
    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mLastRegisteredPage:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 188
    .local v2, "oldView":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 191
    .local v1, "newView":Landroid/view/View;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 192
    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;

    .line 193
    .local v0, "callback":Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;->onActive(Z)V

    .line 196
    .end local v0    # "callback":Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;
    :cond_0
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 197
    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;

    .line 198
    .restart local v0    # "callback":Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;->onActive(Z)V

    .line 201
    .end local v0    # "callback":Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;
    :cond_1
    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mLastRegisteredPage:I

    .line 203
    .end local v1    # "newView":Landroid/view/View;
    .end local v2    # "oldView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public onAddView(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 181
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v2, -0x1

    .line 154
    invoke-super/range {p0 .. p5}, Lcom/sec/android/cover/widget/PagedView;->onLayout(ZIIII)V

    .line 155
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mSnapTo:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mSnapTo:I

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 156
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mSnapTo:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->snapToPage(I)V

    .line 157
    iput v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mSnapTo:I

    .line 159
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 130
    const-string v0, "SViewCoverPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[widthMeasureSpec, heightMeasureSpec] = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-super {p0, p1, p2}, Lcom/sec/android/cover/widget/PagedView;->onMeasure(II)V

    .line 133
    return-void
.end method

.method public onRemoveView(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "deletePermanently"    # Z

    .prologue
    .line 173
    return-void
.end method

.method public onRemoveViewAnimationCompleted()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 64
    const-string v2, "SViewCoverPager"

    const-string v3, "onTouchEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 67
    .local v0, "action":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 69
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mEnableTouch:Z

    if-nez v2, :cond_1

    .line 73
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 138
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 139
    const-string v1, "SViewCoverPager"

    const-string v2, "The view was already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void

    .line 142
    :cond_0
    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 147
    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    .line 149
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public scheduleSnapping(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mSnapTo:I

    .line 163
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->requestLayout()V

    .line 164
    return-void
.end method

.method public scheduleSnapping(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 168
    .local v0, "page":I
    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->scheduleSnapping(I)V

    .line 169
    return-void
.end method

.method public setEnableTouchEvent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mEnableTouch:Z

    .line 207
    return-void
.end method

.method public setSViewCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0
    .param p1, "sview"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .line 60
    return-void
.end method
