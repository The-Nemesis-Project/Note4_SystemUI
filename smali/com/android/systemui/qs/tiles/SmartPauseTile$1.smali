.class Lcom/android/systemui/qs/tiles/SmartPauseTile$1;
.super Lcom/android/systemui/qs/SystemSetting;
.source "SmartPauseTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SmartPauseTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SmartPauseTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$1;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "SmartPauseTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSmartPauseSettings.handleValueChanged() - DB_SMART_PAUSE_ON = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$1;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/SmartPauseTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->access$000(Lcom/android/systemui/qs/tiles/SmartPauseTile;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$1;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/qs/tiles/SmartPauseTile;->mIsProcessing:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->access$102(Lcom/android/systemui/qs/tiles/SmartPauseTile;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
