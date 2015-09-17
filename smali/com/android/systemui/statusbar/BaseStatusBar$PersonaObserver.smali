.class Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;
.super Landroid/content/pm/AbstractPersonaObserver;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Context;II)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "containerId"    # I
    .param p4, "flags"    # I

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 428
    invoke-direct {p0, p2, p3, p4}, Landroid/content/pm/AbstractPersonaObserver;-><init>(Landroid/content/Context;II)V

    .line 429
    return-void
.end method


# virtual methods
.method public onKeyGuardStateChanged(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 437
    return-void
.end method

.method public onSessionExpired()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public onStateChange(Landroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
    .locals 4
    .param p1, "newState"    # Landroid/content/pm/PersonaState;
    .param p2, "previousState"    # Landroid/content/pm/PersonaState;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 440
    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar$16;->$SwitchMap$android$content$pm$PersonaState:[I

    invoke-virtual {p1}, Landroid/content/pm/PersonaState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 467
    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;->containerId:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 468
    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    const-string v0, "KnoxNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default state for container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is locked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 473
    :goto_0
    return-void

    .line 445
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;->containerId:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 446
    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    const-string v0, "KnoxNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification state for container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is superlocked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto :goto_0

    .line 452
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;->containerId:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 453
    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    const-string v0, "KnoxNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification state for container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is locked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto :goto_0

    .line 459
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;->containerId:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 460
    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;->containerId:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 461
    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 462
    const-string v0, "KnoxNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification state for container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto/16 :goto_0

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
