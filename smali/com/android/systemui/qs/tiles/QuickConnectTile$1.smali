.class Lcom/android/systemui/qs/tiles/QuickConnectTile$1;
.super Lcom/android/systemui/qs/SystemSetting;
.source "QuickConnectTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/QuickConnectTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/QuickConnectTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/QuickConnectTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/QuickConnectTile$1;->this$0:Lcom/android/systemui/qs/tiles/QuickConnectTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/QuickConnectTile$1;->this$0:Lcom/android/systemui/qs/tiles/QuickConnectTile;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/QuickConnectTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/QuickConnectTile;->access$000(Lcom/android/systemui/qs/tiles/QuickConnectTile;Ljava/lang/Object;)V

    .line 45
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method