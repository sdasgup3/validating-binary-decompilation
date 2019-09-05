void leaf() {
  __asm__("cmovaq %rcx, %rbx");
  }

void main() {
  leaf();
}