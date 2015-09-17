.class Lcom/android/systemui/cover/SViewCoverService$1;
.super Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;
.source "SViewCoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cover/SViewCoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cover/SViewCoverService;


# direct methods
.method constructor <init>(Lcom/android/systemui/cover/SViewCoverService;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-direct {p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isCoverViewShowing()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # getter for: Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$000(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # invokes: Lcom/android/systemui/cover/SViewCoverService;->getStatusBar()V
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$100(Lcom/android/systemui/cover/SViewCoverService;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # getter for: Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$000(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # getter for: Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$000(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoverViewShowing()Z

    move-result v0

    .line 111
    :goto_0
    return v0

    .line 110
    :cond_1
    const-string v0, "CoverUI"

    const-string v1, "isCoverViewShowing() - cannot find mBaseStatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCoverAppCovered(Z)I
    .locals 2
    .param p1, "covered"    # Z

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # getter for: Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$000(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # invokes: Lcom/android/systemui/cover/SViewCoverService;->getStatusBar()V
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$100(Lcom/android/systemui/cover/SViewCoverService;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # getter for: Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$000(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # getter for: Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$000(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->onCoverAppCovered(Z)I

    move-result v0

    .line 125
    :goto_0
    return v0

    .line 124
    :cond_1
    const-string v0, "CoverUI"

    const-string v1, "onCoverAppCovered() - cannot find mBaseStatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSViewCoverHide()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onSViewCoverShow()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onSystemReady()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # getter for: Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$000(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # invokes: Lcom/android/systemui/cover/SViewCoverService;->getStatusBar()V
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$100(Lcom/android/systemui/cover/SViewCoverService;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # getter for: Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$000(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # getter for: Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$000(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v0, "CoverUI"

    const-string v1, "updateCoverState() - cannot find mBaseStatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
