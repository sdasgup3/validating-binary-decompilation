void leaf() {
  __asm__("blsiq %rcx, %rbx");
  }

void main() {
  leaf();
}