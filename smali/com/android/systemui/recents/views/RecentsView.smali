.class public Lcom/android/systemui/recents/views/RecentsView;
.super Landroid/widget/FrameLayout;
.source "RecentsView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;
.implements Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;
    }
.end annotation


# instance fields
.field private TW_TAG:Ljava/lang/String;

.field mAlreadyLaunchingTask:Z

.field mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

.field mInflater:Landroid/view/LayoutInflater;

.field private mRecentsTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;

.field mSearchBar:Landroid/view/View;

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    const-string v0, "StatusBar-RecentsView"

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->TW_TAG:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    const-string v0, "StatusBar-RecentsView"

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->TW_TAG:Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 106
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mInflater:Landroid/view/LayoutInflater;

    .line 107
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->dismiss()V

    .line 769
    return-void
.end method

.method public dismissFocusedTask()V
    .locals 5

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 399
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 400
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 401
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_1

    move-object v3, v0

    .line 402
    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 403
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->dismissFocusedTask()V

    .line 407
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    return-void

    .line 399
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public focusNextTask(Z)V
    .locals 5
    .param p1, "forward"    # Z

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 385
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 386
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 387
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_1

    move-object v3, v0

    .line 388
    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 389
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskStackView;->focusNextTask(Z)V

    .line 393
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    return-void

    .line 385
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public hasSearchBar()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCascadeRunning()Z
    .locals 11

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 775
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 776
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 777
    .local v0, "child":Landroid/view/View;
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v10, :cond_1

    move-object v6, v0

    .line 778
    check-cast v6, Lcom/android/systemui/recents/views/TaskStackView;

    .line 779
    .local v6, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    iget-object v5, v6, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 780
    .local v5, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 783
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 784
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 785
    .local v8, "taskCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v8, :cond_1

    .line 786
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/model/Task;

    iget-boolean v10, v10, Lcom/android/systemui/recents/model/Task;->isActive:Z

    if-eqz v10, :cond_0

    .line 787
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/model/Task;

    .line 788
    .local v7, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v7}, Lcom/android/systemui/recents/model/Task;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    .line 789
    .local v4, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x4

    invoke-virtual {v4, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 791
    const/4 v10, 0x1

    .line 798
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "j":I
    .end local v4    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v5    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v6    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v7    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "taskCount":I
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :goto_2
    return v10

    .line 785
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "j":I
    .restart local v5    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v6    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .restart local v8    # "taskCount":I
    .restart local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 775
    .end local v3    # "j":I
    .end local v5    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v6    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v8    # "taskCount":I
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 798
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public launchFocusedTask()Z
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v7

    .line 181
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 182
    invoke-virtual {p0, v8}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 183
    .local v6, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v6, v0, :cond_2

    move-object v1, v6

    .line 184
    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    .line 185
    .local v1, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    iget-object v3, v1, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 187
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v10

    .line 188
    .local v10, "taskCount":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v10, :cond_2

    .line 189
    invoke-virtual {v1, v9}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 190
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    .line 191
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->isFocusedTask()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 192
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Z)V

    .line 193
    const/4 v5, 0x1

    .line 198
    .end local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v6    # "child":Landroid/view/View;
    .end local v9    # "j":I
    .end local v10    # "taskCount":I
    :cond_0
    return v5

    .line 188
    .restart local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .restart local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v6    # "child":Landroid/view/View;
    .restart local v9    # "j":I
    .restart local v10    # "taskCount":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 181
    .end local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v9    # "j":I
    .end local v10    # "taskCount":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public launchPreviousTask()Z
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v7

    .line 205
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 206
    invoke-virtual {p0, v8}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 207
    .local v6, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v6, v0, :cond_4

    move-object v1, v6

    .line 208
    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    .line 209
    .local v1, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    iget-object v3, v1, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 210
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v12

    .line 213
    .local v12, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 214
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 215
    .local v11, "taskCount":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v11, :cond_4

    .line 216
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v0, :cond_3

    .line 217
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    .line 218
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v1, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    .line 221
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v10

    .line 222
    .local v10, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, p0

    .line 223
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/RecentsView;->onAltTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Z)V

    .line 231
    :goto_2
    const/4 v5, 0x1

    .line 237
    .end local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v6    # "child":Landroid/view/View;
    .end local v9    # "j":I
    .end local v10    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v11    # "taskCount":I
    .end local v12    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_1
    return v5

    .restart local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .restart local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v6    # "child":Landroid/view/View;
    .restart local v9    # "j":I
    .restart local v10    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v11    # "taskCount":I
    .restart local v12    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_2
    move-object v0, p0

    .line 225
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Z)V

    goto :goto_2

    .line 215
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v10    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 205
    .end local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v9    # "j":I
    .end local v11    # "taskCount":I
    .end local v12    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public onAllTaskViewsDismissed()V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onAllTaskViewsDismissed()V

    .line 736
    return-void
.end method

.method public onAltTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Z)V
    .locals 24
    .param p1, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p2, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p3, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p4, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p5, "lockToTask"    # Z

    .prologue
    .line 580
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v8, :cond_0

    .line 581
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v8}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onAltTaskViewClicked()V

    .line 584
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/systemui/recents/views/RecentsView;->mAlreadyLaunchingTask:Z

    if-eqz v8, :cond_1

    .line 706
    :goto_0
    return-void

    .line 588
    :cond_1
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/systemui/recents/views/RecentsView;->mAlreadyLaunchingTask:Z

    .line 591
    new-instance v23, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct/range {v23 .. v23}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    .line 593
    .local v23, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v6, 0x0

    .line 594
    .local v6, "offsetX":I
    const/4 v7, 0x0

    .line 595
    .local v7, "offsetY":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v22

    .line 596
    .local v22, "stackScroll":F
    if-nez p2, :cond_5

    .line 600
    move-object/from16 v4, p1

    .line 601
    .local v4, "sourceView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v8, v0, v1, v2, v9}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v23

    .line 603
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->left:I

    .line 604
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 612
    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v14

    .line 614
    .local v14, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const/16 v20, 0x0

    .line 615
    .local v20, "opts":Landroid/app/ActivityOptions;
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_4

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-lez v8, :cond_4

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-lez v8, :cond_4

    .line 618
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v8, :cond_6

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v8

    if-lez v8, :cond_6

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v8

    if-lez v8, :cond_6

    .line 622
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->isFocusedTask()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 623
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->unsetFocusedTask()V

    .line 626
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v21

    .line 627
    .local v21, "scale":F
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v21

    float-to-int v0, v8

    move/from16 v19, v0

    .line 628
    .local v19, "fromHeaderWidth":I
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v21

    float-to-int v0, v8

    move/from16 v18, v0

    .line 629
    .local v18, "fromHeaderHeight":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 634
    .local v5, "b":Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 635
    .local v17, "c":Landroid/graphics/Canvas;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v9

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 636
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 637
    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 643
    .end local v17    # "c":Landroid/graphics/Canvas;
    .end local v18    # "fromHeaderHeight":I
    .end local v19    # "fromHeaderWidth":I
    .end local v21    # "scale":F
    :goto_2
    const/4 v10, 0x0

    .line 644
    .local v10, "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    if-eqz p5, :cond_3

    .line 645
    new-instance v10, Lcom/android/systemui/recents/views/RecentsView$3;

    .end local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    move-object/from16 v0, p0

    invoke-direct {v10, v0, v14}, Lcom/android/systemui/recents/views/RecentsView$3;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    .line 662
    .restart local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_3
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static/range {v4 .. v10}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v20

    .line 667
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .end local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_4
    move-object/from16 v15, v20

    .line 668
    .local v15, "launchOpts":Landroid/app/ActivityOptions;
    new-instance v11, Lcom/android/systemui/recents/views/RecentsView$4;

    move-object/from16 v12, p0

    move-object/from16 v13, p4

    move/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/recents/views/RecentsView$4;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/app/ActivityOptions;Z)V

    .line 693
    .local v11, "launchRunnable":Ljava/lang/Runnable;
    if-nez p2, :cond_7

    .line 694
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/recents/views/RecentsView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 606
    .end local v4    # "sourceView":Landroid/view/View;
    .end local v11    # "launchRunnable":Ljava/lang/Runnable;
    .end local v14    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local v15    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v20    # "opts":Landroid/app/ActivityOptions;
    :cond_5
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    .line 607
    .restart local v4    # "sourceView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v8, v0, v1, v2, v9}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v23

    goto/16 :goto_1

    .line 641
    .restart local v14    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .restart local v20    # "opts":Landroid/app/ActivityOptions;
    :cond_6
    const/4 v8, 0x1

    const/4 v9, 0x1

    sget-object v12, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5    # "b":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 696
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .restart local v11    # "launchRunnable":Ljava/lang/Runnable;
    .restart local v15    # "launchOpts":Landroid/app/ActivityOptions;
    :cond_7
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v8, :cond_8

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 699
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/systemui/recents/views/TaskStackView;->startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Z)V

    goto/16 :goto_0

    .line 702
    :cond_8
    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v8, v2}, Lcom/android/systemui/recents/views/TaskStackView;->startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Z)V

    .line 703
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v8, v9}, Lcom/android/systemui/recents/views/RecentsView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->updateSystemInsets(Landroid/graphics/Rect;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->requestLayout()V

    .line 365
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public onChangeMultiwindowEnabled()V
    .locals 9

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 112
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 113
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "child":Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v8, :cond_0

    move-object v5, v0

    .line 115
    check-cast v5, Lcom/android/systemui/recents/views/TaskStackView;

    .line 116
    .local v5, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    iget-object v4, v5, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 117
    .local v4, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v6

    .line 118
    .local v6, "taskCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v6, :cond_0

    .line 119
    invoke-virtual {v5, v3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    .line 120
    .local v7, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 112
    .end local v3    # "j":I
    .end local v4    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v5    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v6    # "taskCount":I
    .end local v7    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onComponentRemoved(Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 812
    .local p1, "cns":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 813
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 814
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 815
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 816
    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 817
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskStackView;->onComponentRemoved(Ljava/util/HashSet;)V

    .line 813
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 820
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 340
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 341
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 342
    .local v3, "searchBarSpaceBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 344
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 350
    .end local v3    # "searchBarSpaceBounds":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 351
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 352
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 353
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 354
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, p3

    invoke-virtual {v0, p2, p3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 351
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 302
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 303
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 306
    .local v2, "height":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 307
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 308
    .local v9, "searchBarSpaceBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 314
    .end local v9    # "searchBarSpaceBounds":Landroid/graphics/Rect;
    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 315
    .local v5, "taskStackBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/RecentsConfiguration;->getTaskStackBounds(IIIILandroid/graphics/Rect;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v7

    .line 321
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 322
    invoke-virtual {p0, v8}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 323
    .local v6, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v6, v0, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    move-object v10, v6

    .line 324
    check-cast v10, Lcom/android/systemui/recents/views/TaskStackView;

    .line 326
    .local v10, "tsv":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v10, v5}, Lcom/android/systemui/recents/views/TaskStackView;->setStackInsetRect(Landroid/graphics/Rect;)V

    .line 327
    invoke-virtual {v10, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->measure(II)V

    .line 321
    .end local v10    # "tsv":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 331
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->setMeasuredDimension(II)V

    .line 332
    return-void
.end method

.method public onTaskStackFilterTriggered()V
    .locals 4

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->filteringCurrentViewsAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 750
    :cond_0
    return-void
.end method

.method public onTaskStackUnfilterTriggered()V
    .locals 4

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->filteringNewViewsAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 764
    :cond_0
    return-void
.end method

.method public onTaskStackUpperBounds(Z)V
    .locals 1
    .param p1, "isUpperBounds"    # Z

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0, p1}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskStackUpperBounds(Z)V

    .line 805
    return-void
.end method

.method public onTaskViewAppInfoClicked(Lcom/android/systemui/recents/model/Task;)V
    .locals 6
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v5, 0x0

    .line 711
    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 712
    .local v0, "baseIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 714
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 715
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v5, v3}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 718
    return-void
.end method

.method public onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Z)V
    .locals 25
    .param p1, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p2, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p3, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p4, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p5, "lockToTask"    # Z

    .prologue
    .line 433
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v8, :cond_0

    .line 434
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v8}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewClicked()V

    .line 437
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/systemui/recents/views/RecentsView;->mAlreadyLaunchingTask:Z

    if-eqz v8, :cond_1

    .line 572
    :goto_0
    return-void

    .line 440
    :cond_1
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/systemui/recents/views/RecentsView;->mAlreadyLaunchingTask:Z

    .line 443
    new-instance v24, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct/range {v24 .. v24}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    .line 445
    .local v24, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v6, 0x0

    .line 446
    .local v6, "offsetX":I
    const/4 v7, 0x0

    .line 447
    .local v7, "offsetY":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v23

    .line 448
    .local v23, "stackScroll":F
    if-nez p2, :cond_2

    .line 452
    move-object/from16 v4, p1

    .line 453
    .local v4, "sourceView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v8, v0, v1, v2, v9}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v24

    .line 454
    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->left:I

    .line 455
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 461
    :goto_1
    if-nez p4, :cond_3

    .line 462
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/RecentsView;->TW_TAG:Ljava/lang/String;

    const-string v9, "no task to Launch"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    .end local v4    # "sourceView":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    .line 458
    .restart local v4    # "sourceView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v8, v0, v1, v2, v9}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v24

    goto :goto_1

    .line 467
    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v14

    .line 469
    .local v14, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const/16 v21, 0x0

    .line 470
    .local v21, "opts":Landroid/app/ActivityOptions;
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_6

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-lez v8, :cond_6

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-lez v8, :cond_6

    .line 473
    if-eqz p2, :cond_7

    .line 475
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->isFocusedTask()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 476
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->unsetFocusedTask()V

    .line 479
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v22

    .line 480
    .local v22, "scale":F
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v22

    float-to-int v0, v8

    move/from16 v20, v0

    .line 481
    .local v20, "fromHeaderWidth":I
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v22

    float-to-int v0, v8

    move/from16 v19, v0

    .line 482
    .local v19, "fromHeaderHeight":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 487
    .local v5, "b":Landroid/graphics/Bitmap;
    new-instance v18, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 488
    .local v18, "c":Landroid/graphics/Canvas;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v9

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 489
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 490
    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 496
    .end local v18    # "c":Landroid/graphics/Canvas;
    .end local v19    # "fromHeaderHeight":I
    .end local v20    # "fromHeaderWidth":I
    .end local v22    # "scale":F
    :goto_2
    const/4 v10, 0x0

    .line 497
    .local v10, "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    if-eqz p5, :cond_5

    .line 498
    new-instance v10, Lcom/android/systemui/recents/views/RecentsView$1;

    .end local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    move-object/from16 v0, p0

    invoke-direct {v10, v0, v14}, Lcom/android/systemui/recents/views/RecentsView$1;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    .line 514
    .restart local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_5
    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static/range {v4 .. v10}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v21

    .line 519
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .end local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_6
    move-object/from16 v16, v21

    .line 521
    .local v16, "launchOpts":Landroid/app/ActivityOptions;
    new-instance v15, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 524
    .local v15, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    new-instance v11, Lcom/android/systemui/recents/views/RecentsView$2;

    move-object/from16 v12, p0

    move-object/from16 v13, p4

    move/from16 v17, p5

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/recents/views/RecentsView$2;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/app/ActivityOptions;Z)V

    .line 559
    .local v11, "launchRunnable":Ljava/lang/Runnable;
    if-nez p2, :cond_8

    .line 560
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/recents/views/RecentsView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 494
    .end local v11    # "launchRunnable":Ljava/lang/Runnable;
    .end local v15    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v16    # "launchOpts":Landroid/app/ActivityOptions;
    :cond_7
    const/4 v8, 0x1

    const/4 v9, 0x1

    sget-object v12, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5    # "b":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 562
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .restart local v11    # "launchRunnable":Ljava/lang/Runnable;
    .restart local v15    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v16    # "launchOpts":Landroid/app/ActivityOptions;
    :cond_8
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v8, :cond_9

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 565
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/systemui/recents/views/TaskStackView;->startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Z)V

    goto/16 :goto_0

    .line 568
    :cond_9
    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v8, v2}, Lcom/android/systemui/recents/views/TaskStackView;->startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Z)V

    .line 569
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v8, v9}, Lcom/android/systemui/recents/views/RecentsView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public onTaskViewDismissed(Lcom/android/systemui/recents/model/Task;)V
    .locals 4
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 725
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 726
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V

    .line 729
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-static {v3}, Lcom/android/systemui/recents/misc/Utilities;->isDocument(Landroid/content/Intent;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->removeTask(IZ)V

    .line 731
    return-void
.end method

.method public onUserInteraction()V
    .locals 5

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 372
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 373
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 374
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 375
    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 376
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->onUserInteraction()V

    .line 372
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public removeAllTaskStacks()V
    .locals 4

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 169
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 170
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v3, :cond_0

    .line 172
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->removeViewAt(I)V

    .line 169
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 175
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setCallbacks(Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    .line 130
    return-void
.end method

.method public setDebugOverlay(Lcom/android/systemui/recents/views/DebugOverlayView;)V
    .locals 0
    .param p1, "overlay"    # Lcom/android/systemui/recents/views/DebugOverlayView;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    .line 135
    return-void
.end method

.method public setSearchBar(Landroid/view/View;)V
    .locals 0
    .param p1, "searchBar"    # Landroid/view/View;

    .prologue
    .line 281
    return-void
.end method

.method public setSearchBarVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 295
    :cond_0
    return-void
.end method

.method public setTaskStacks(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v0

    .line 141
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 142
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 143
    .local v5, "v":Landroid/view/View;
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v5, v6, :cond_0

    .line 144
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsView;->removeViewAt(I)V

    .line 141
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 149
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    .line 150
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 151
    .local v2, "numStacks":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 152
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/TaskStack;

    .line 153
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    new-instance v4, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/model/TaskStack;)V

    .line 154
    .local v4, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v4, p0}, Lcom/android/systemui/recents/views/TaskStackView;->setCallbacks(Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;)V

    .line 156
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v6, :cond_2

    .line 157
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/TaskStackView;->setDebugOverlay(Lcom/android/systemui/recents/views/DebugOverlayView;)V

    .line 159
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 163
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v4    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_3
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mAlreadyLaunchingTask:Z

    .line 164
    return-void
.end method

.method public startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 243
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 244
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 246
    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 247
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskStackView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 243
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 255
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 256
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 257
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 258
    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 259
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskStackView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 255
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v4}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onExitToHomeAnimationTriggered()V

    .line 265
    return-void
.end method

.method public unfilterFilteredStacks()Z
    .locals 5

    .prologue
    .line 411
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 413
    const/4 v3, 0x0

    .line 414
    .local v3, "stacksUnfiltered":Z
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 415
    .local v1, "numStacks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 416
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/TaskStack;

    .line 417
    .local v2, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->hasFilteredTasks()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 418
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->unfilterTasks()V

    .line 419
    const/4 v3, 0x1

    .line 415
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    .end local v0    # "i":I
    .end local v1    # "numStacks":I
    .end local v2    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v3    # "stacksUnfiltered":Z
    :cond_1
    const/4 v3, 0x0

    :cond_2
    return v3
.end method
