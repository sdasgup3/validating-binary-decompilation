void leaf() {
  __asm__("cmpl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}