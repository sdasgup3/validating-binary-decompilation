void leaf() {
  __asm__("vcvttss2siq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}