.class Lcom/android/systemui/qs/tiles/ToddlerModeTile$2;
.super Landroid/content/BroadcastReceiver;
.source "ToddlerModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ToddlerModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ToddlerModeTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->access$200(Lcom/android/systemui/qs/tiles/ToddlerModeTile;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->access$200(Lcom/android/systemui/qs/tiles/ToddlerModeTile;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->access$200(Lcom/android/systemui/qs/tiles/ToddlerModeTile;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->access$400(Lcom/android/systemui/qs/tiles/ToddlerModeTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/ToddlerModeTile;->isAirPlaneMode:I
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->access$302(Lcom/android/systemui/qs/tiles/ToddlerModeTile;I)I

    goto :goto_0
.end method
