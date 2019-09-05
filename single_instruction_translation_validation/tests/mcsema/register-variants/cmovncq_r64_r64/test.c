void leaf() {
  __asm__("cmovncq %rcx, %rbx");
  }

void main() {
  leaf();
}