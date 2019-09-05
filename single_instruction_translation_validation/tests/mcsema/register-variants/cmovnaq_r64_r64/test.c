void leaf() {
  __asm__("cmovnaq %rcx, %rbx");
  }

void main() {
  leaf();
}