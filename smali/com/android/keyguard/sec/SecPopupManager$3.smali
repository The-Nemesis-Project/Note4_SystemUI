.class final Lcom/android/keyguard/sec/SecPopupManager$3;
.super Ljava/lang/Object;
.source "SecPopupManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecPopupManager;->showPopupDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecPopupManager$3;->val$callback:Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    # getter for: Lcom/android/keyguard/sec/SecPopupManager;->mDialogDismissHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/keyguard/sec/SecPopupManager;->access$100()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/keyguard/sec/SecPopupManager;->mDialogDismissHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/keyguard/sec/SecPopupManager;->access$100()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecPopupManager$3;->val$callback:Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecPopupManager$3;->val$callback:Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;->onDismiss()V

    :cond_1
    const/4 v0, 0x0

    # setter for: Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecPopupManager;->access$202(Landroid/app/Dialog;)Landroid/app/Dialog;

    const-string v0, "SecPopupManager"

    const-string v1, "popup dialog set to null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
