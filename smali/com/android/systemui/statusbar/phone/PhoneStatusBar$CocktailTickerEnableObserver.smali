.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CocktailTickerEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    .prologue
    .line 6810
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 6811
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6812
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6816
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 6817
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/Feature;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6818
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cocktail_bar_tickers_enabled"

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v4

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_1

    .line 6821
    .local v0, "val":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnablebyCocktailSettings:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 6822
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnablebyCocktailSettings:Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 6823
    const-string v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTickerEnablebyCocktailSettings.onChange() - DB = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnablebyCocktailSettings:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6824
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnablebyCocktailSettings:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6825
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->haltTicker()V

    .line 6826
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 6830
    .end local v0    # "val":Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 6818
    goto :goto_0
.end method
