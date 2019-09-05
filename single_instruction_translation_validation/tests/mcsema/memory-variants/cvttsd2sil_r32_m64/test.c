void leaf() {
  __asm__("cvttsd2sil -4(%rbp), %ebx");
  }

void main() {
  leaf();
}