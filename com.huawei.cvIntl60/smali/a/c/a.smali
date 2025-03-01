.class public La/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/c/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/os/Message;

.field private c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, La/c/a;->a:I

    .line 11
    iput-object v1, p0, La/c/a;->b:Landroid/os/Message;

    .line 12
    iput-object v1, p0, La/c/a;->c:Landroid/os/Bundle;

    .line 16
    iput p1, p0, La/c/a;->a:I

    .line 17
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, La/c/a;->b:Landroid/os/Message;

    .line 18
    iget-object v0, p0, La/c/a;->b:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->what:I

    .line 19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, La/c/a;->c:Landroid/os/Bundle;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Message;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, La/c/a;->a:I

    .line 11
    iput-object v1, p0, La/c/a;->b:Landroid/os/Message;

    .line 12
    iput-object v1, p0, La/c/a;->c:Landroid/os/Bundle;

    .line 32
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, La/c/a;->a:I

    .line 33
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, La/c/a;->b:Landroid/os/Message;

    .line 34
    iget-object v0, p0, La/c/a;->b:Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 35
    iget-object v0, p0, La/c/a;->b:Landroid/os/Message;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 36
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, La/c/a;->c:Landroid/os/Bundle;

    .line 37
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, La/c/a;->a:I

    return v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, La/c/a;->b:Landroid/os/Message;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, La/c/a;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, La/c/a;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 98
    return-void
.end method

.method public a(Ljava/lang/String;La/c/a$a;)V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v1, p0, La/c/a;->c:Landroid/os/Bundle;

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 133
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, La/c/a;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, La/c/a;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, La/c/a;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 118
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, La/c/a;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, La/c/a;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b()Landroid/os/Message;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, La/c/a;->b:Landroid/os/Message;

    iget-object v1, p0, La/c/a;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 47
    iget-object v0, p0, La/c/a;->b:Landroid/os/Message;

    return-object v0
.end method

.method public c(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, La/c/a;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, La/c/a;->b:Landroid/os/Message;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, La/c/a;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, La/c/a;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)La/c/a$a;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, La/c/a;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 141
    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    .line 143
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/c/a$a;

    goto :goto_0
.end method
