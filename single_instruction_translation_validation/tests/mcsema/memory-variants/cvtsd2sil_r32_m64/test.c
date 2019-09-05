void leaf() {
  __asm__("cvtsd2sil -4(%rbp), %ebx");
  }

void main() {
  leaf();
}