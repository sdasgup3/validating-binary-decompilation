void leaf() {
  __asm__("vcvtss2siq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}