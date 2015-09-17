.class Lcom/android/systemui/power/PowerUI$2;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .prologue
    .line 925
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 927
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 928
    const-string v0, "PowerUI"

    const-string v1, "Scover open"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    sput-boolean v2, Lcom/android/systemui/power/PowerUI;->mScoverOpen:Z

    .line 930
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isCocktailLowBatteryShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateCocktailLowBatteryWarning(Z)V

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    const-string v0, "PowerUI"

    const-string v1, "Scover close"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mScoverOpen:Z

    .line 936
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isLowBatteryDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateCocktailLowBatteryWarning(Z)V

    goto :goto_0
.end method
