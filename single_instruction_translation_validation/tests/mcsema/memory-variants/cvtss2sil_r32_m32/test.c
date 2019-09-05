void leaf() {
  __asm__("cvtss2sil -4(%rbp), %ebx");
  }

void main() {
  leaf();
}