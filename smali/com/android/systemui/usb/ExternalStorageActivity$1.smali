.class Lcom/android/systemui/usb/ExternalStorageActivity$1;
.super Landroid/os/storage/StorageEventListener;
.source "ExternalStorageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/ExternalStorageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/ExternalStorageActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/ExternalStorageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/usb/ExternalStorageActivity$1;->this$0:Lcom/android/systemui/usb/ExternalStorageActivity;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v2, "unmounted"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "bad_removal"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "removed"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/usb/ExternalStorageActivity$1;->this$0:Lcom/android/systemui/usb/ExternalStorageActivity;

    # invokes: Lcom/android/systemui/usb/ExternalStorageActivity;->getSubSystem(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/android/systemui/usb/ExternalStorageActivity;->access$000(Lcom/android/systemui/usb/ExternalStorageActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/String;

    const-string v2, "sd"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_1
    const-string v2, "ExternalStorageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStorageStateChanged : path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subsystem = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/usb/ExternalStorageActivity$1;->this$0:Lcom/android/systemui/usb/ExternalStorageActivity;

    # getter for: Lcom/android/systemui/usb/ExternalStorageActivity;->mSubSystem:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/systemui/usb/ExternalStorageActivity;->access$100(Lcom/android/systemui/usb/ExternalStorageActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/usb/ExternalStorageActivity$1;->this$0:Lcom/android/systemui/usb/ExternalStorageActivity;

    # getter for: Lcom/android/systemui/usb/ExternalStorageActivity;->mSubSystem:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/usb/ExternalStorageActivity;->access$100(Lcom/android/systemui/usb/ExternalStorageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/usb/ExternalStorageActivity$1;->this$0:Lcom/android/systemui/usb/ExternalStorageActivity;

    invoke-virtual {v2}, Lcom/android/systemui/usb/ExternalStorageActivity;->finish()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
