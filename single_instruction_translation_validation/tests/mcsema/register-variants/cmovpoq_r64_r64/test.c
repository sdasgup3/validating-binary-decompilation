void leaf() {
  __asm__("cmovpoq %rcx, %rbx");
  }

void main() {
  leaf();
}