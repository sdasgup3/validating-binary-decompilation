void leaf() {
  __asm__("vcvttsd2siq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}